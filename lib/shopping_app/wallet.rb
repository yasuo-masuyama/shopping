class Wallet
  attr_reader :balance

  def initialize(owner)
    self.owner = owner
    @balance = 0
  end

  def deposit(amount)
    @balance += amount.to_i
  end

  def withdraw(amount)
    return unless @balance >= amount

    if @balance < amount
      return
    end

    @balance -= amount.to_i
    amount
  end
end

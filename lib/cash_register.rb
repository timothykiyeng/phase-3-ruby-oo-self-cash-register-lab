
class CashRegister

attr_reader :discount
attr_accessor :total, :items, :last_transaction

  def initialize (discount=0)
    @discount=discount
    @total=0
    @items = []
  end

  def add_item(title, price, amount=1)
    self.last_transaction = price * amount
    self.total += price * amount
    amount.times do
    self.items << title
    end
  end

  def apply_discount
    if discount > 0
      current_discount = self.total * @discount/100
      self.total = self.total - current_discount
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
  end
end

def void_last_transaction
  self.total -= self.last_transaction
end
end

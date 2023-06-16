module MyEnumerable
  def all?
    each { |item| return false unless yield(item) }
    true
  end

  def any?
    each { |item| return true if yield(item) }
    false
  end

  def filter
    array = []
    each { |item| array << item if yield(item) }
    array
  end
end

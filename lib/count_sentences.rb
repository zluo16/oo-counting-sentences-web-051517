require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0
    count += self.split(" ").count{|string| string.end_with?(".") ||
      string.end_with?("?") || string.end_with?("!")}
  end
end

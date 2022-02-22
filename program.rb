##!/usr/bin/env ruby

## Substrings
#  This method will take a word (or multiple words) as the first argument
#  and an array of valid substrings as the second argument.
#  This method will return a hash listing each substring that was found in
#  the first argument. And how many times that particular substring was
#  found. This is case insensitive.

# here scan is used because for each match, it generates a result and pass
# to the block, and is added to the result array. So here we can use it to get
# the counts of the repeated words too!

dictionary = ["below","down","go","going","horn","how","howdy","it","i" ,
              "low","own","part","partner","sit"]

# method starts here
def substrings(string, dictionary)
  string = string.downcase
  word_hash = Hash.new

  dictionary.each do |word|
    matched = string.scan(word).length
    if matched != 0
      word_hash[word] = matched
    end
  end
  word_hash
end

# a simple test
test_hash = substrings("Howdy partner, sit down! How's it going?", dictionary)
p test_hash
!/usr/bin/env ruby

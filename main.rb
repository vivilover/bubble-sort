=begin
  * bubble-sort method *
  -Compare only adjacent elements in each iteration using for loop (inner loop)
  -Using while loop, stop iteration when swap == 0 (outer loop)
=end
def bubble_sort(nums)
  unsorted = true
  while unsorted do
    unsorted = false
    for i in 0..nums.length-2 do # nums.length-2 because the last element does not need comparison
      if nums[i] > nums[i+1]
        # temp = nums[i+1]
        # nums[i+1] = nums[i]
        # nums[i] = temp
        nums[i], nums[i + 1] = nums[i + 1], nums[i] # Can swap this way, too!
        unsorted = true
      end
    end # inner for loop ends
  end # outer while loop
  nums # returns the sorted array
end #function ends

p bubble_sort([4,3,78,2,0,1])
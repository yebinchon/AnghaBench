
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64 ;



__attribute__((used)) static int
intset_binsrch_uint64(uint64 item, uint64 *arr, int arr_elems, bool nextkey)
{
 int low,
    high,
    mid;

 low = 0;
 high = arr_elems;
 while (high > low)
 {
  mid = low + (high - low) / 2;

  if (nextkey)
  {
   if (item >= arr[mid])
    low = mid + 1;
   else
    high = mid;
  }
  else
  {
   if (item > arr[mid])
    low = mid + 1;
   else
    high = mid;
  }
 }

 return low;
}

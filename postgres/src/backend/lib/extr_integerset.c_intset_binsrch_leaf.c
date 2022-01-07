
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_3__ {scalar_t__ first; } ;
typedef TYPE_1__ leaf_item ;



__attribute__((used)) static int
intset_binsrch_leaf(uint64 item, leaf_item *arr, int arr_elems, bool nextkey)
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
   if (item >= arr[mid].first)
    low = mid + 1;
   else
    high = mid;
  }
  else
  {
   if (item > arr[mid].first)
    low = mid + 1;
   else
    high = mid;
  }
 }

 return low;
}

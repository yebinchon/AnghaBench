
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortItem ;
typedef int MultiSortSupport ;


 int Assert (int) ;
 scalar_t__ multi_sort_compare (int *,int *,int ) ;

__attribute__((used)) static int
count_distinct_groups(int numrows, SortItem *items, MultiSortSupport mss)
{
 int i;
 int ndistinct;

 ndistinct = 1;
 for (i = 1; i < numrows; i++)
 {

  Assert(multi_sort_compare(&items[i], &items[i - 1], mss) >= 0);

  if (multi_sort_compare(&items[i], &items[i - 1], mss) != 0)
   ndistinct += 1;
 }

 return ndistinct;
}

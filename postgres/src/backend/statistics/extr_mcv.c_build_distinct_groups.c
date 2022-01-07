
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int count; } ;
typedef TYPE_1__ SortItem ;
typedef int MultiSortSupport ;


 int Assert (int) ;
 int compare_sort_item_count ;
 int count_distinct_groups (int,TYPE_1__*,int ) ;
 scalar_t__ multi_sort_compare (TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ palloc (int) ;
 int pg_qsort (void*,int,int,int ) ;

__attribute__((used)) static SortItem *
build_distinct_groups(int numrows, SortItem *items, MultiSortSupport mss,
       int *ndistinct)
{
 int i,
    j;
 int ngroups = count_distinct_groups(numrows, items, mss);

 SortItem *groups = (SortItem *) palloc(ngroups * sizeof(SortItem));

 j = 0;
 groups[0] = items[0];
 groups[0].count = 1;

 for (i = 1; i < numrows; i++)
 {

  Assert(multi_sort_compare(&items[i], &items[i - 1], mss) >= 0);


  if (multi_sort_compare(&items[i], &items[i - 1], mss) != 0)
  {
   groups[++j] = items[i];
   groups[j].count = 0;
  }

  groups[j].count++;
 }


 Assert(j + 1 == ngroups);


 pg_qsort((void *) groups, ngroups, sizeof(SortItem),
    compare_sort_item_count);

 *ndistinct = ngroups;
 return groups;
}

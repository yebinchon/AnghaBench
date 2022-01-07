
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
typedef TYPE_1__ SortItem ;



__attribute__((used)) static int
compare_sort_item_count(const void *a, const void *b)
{
 SortItem *ia = (SortItem *) a;
 SortItem *ib = (SortItem *) b;

 if (ia->count == ib->count)
  return 0;
 else if (ia->count > ib->count)
  return -1;

 return 1;
}

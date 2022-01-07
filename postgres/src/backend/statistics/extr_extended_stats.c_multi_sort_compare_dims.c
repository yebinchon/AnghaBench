
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * ssup; } ;
struct TYPE_6__ {int * isnull; int * values; } ;
typedef TYPE_1__ SortItem ;
typedef TYPE_2__* MultiSortSupport ;


 int ApplySortComparator (int ,int ,int ,int ,int *) ;

int
multi_sort_compare_dims(int start, int end,
      const SortItem *a, const SortItem *b,
      MultiSortSupport mss)
{
 int dim;

 for (dim = start; dim <= end; dim++)
 {
  int r = ApplySortComparator(a->values[dim], a->isnull[dim],
           b->values[dim], b->isnull[dim],
           &mss->ssup[dim]);

  if (r != 0)
   return r;
 }

 return 0;
}

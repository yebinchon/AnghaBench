
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ndims; int * ssup; } ;
struct TYPE_3__ {int * isnull; int * values; } ;
typedef TYPE_1__ SortItem ;
typedef TYPE_2__* MultiSortSupport ;


 int ApplySortComparator (int ,int ,int ,int ,int *) ;

int
multi_sort_compare(const void *a, const void *b, void *arg)
{
 MultiSortSupport mss = (MultiSortSupport) arg;
 SortItem *ia = (SortItem *) a;
 SortItem *ib = (SortItem *) b;
 int i;

 for (i = 0; i < mss->ndims; i++)
 {
  int compare;

  compare = ApplySortComparator(ia->values[i], ia->isnull[i],
           ib->values[i], ib->isnull[i],
           &mss->ssup[i]);

  if (compare != 0)
   return compare;
 }


 return 0;
}

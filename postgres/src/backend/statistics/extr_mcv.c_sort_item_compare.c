
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * isnull; int * values; } ;
typedef int SortSupport ;
typedef TYPE_1__ SortItem ;


 int ApplySortComparator (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
sort_item_compare(const void *a, const void *b, void *arg)
{
 SortSupport ssup = (SortSupport) arg;
 SortItem *ia = (SortItem *) a;
 SortItem *ib = (SortItem *) b;

 return ApplySortComparator(ia->values[0], ia->isnull[0],
          ib->values[0], ib->isnull[0],
          ssup);
}

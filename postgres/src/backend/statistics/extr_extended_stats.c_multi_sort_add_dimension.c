
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ssup; } ;
struct TYPE_5__ {int ssup_nulls_first; int ssup_collation; int ssup_cxt; } ;
typedef TYPE_1__* SortSupport ;
typedef int Oid ;
typedef TYPE_2__* MultiSortSupport ;


 int CurrentMemoryContext ;
 int PrepareSortSupportFromOrderingOp (int ,TYPE_1__*) ;

void
multi_sort_add_dimension(MultiSortSupport mss, int sortdim,
       Oid oper, Oid collation)
{
 SortSupport ssup = &mss->ssup[sortdim];

 ssup->ssup_cxt = CurrentMemoryContext;
 ssup->ssup_collation = collation;
 ssup->ssup_nulls_first = 0;

 PrepareSortSupportFromOrderingOp(oper, ssup);
}

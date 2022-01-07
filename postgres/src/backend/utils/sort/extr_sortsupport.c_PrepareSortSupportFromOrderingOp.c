
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_4__ {int ssup_reverse; int * comparator; } ;
typedef TYPE_1__* SortSupport ;
typedef int Oid ;


 int Assert (int ) ;
 scalar_t__ BTGreaterStrategyNumber ;
 int ERROR ;
 int FinishSortSupportFunction (int ,int ,TYPE_1__*) ;
 int elog (int ,char*,int ) ;
 int get_ordering_op_properties (int ,int *,int *,scalar_t__*) ;

void
PrepareSortSupportFromOrderingOp(Oid orderingOp, SortSupport ssup)
{
 Oid opfamily;
 Oid opcintype;
 int16 strategy;

 Assert(ssup->comparator == ((void*)0));


 if (!get_ordering_op_properties(orderingOp, &opfamily, &opcintype,
         &strategy))
  elog(ERROR, "operator %u is not a valid ordering operator",
    orderingOp);
 ssup->ssup_reverse = (strategy == BTGreaterStrategyNumber);

 FinishSortSupportFunction(opfamily, opcintype, ssup);
}

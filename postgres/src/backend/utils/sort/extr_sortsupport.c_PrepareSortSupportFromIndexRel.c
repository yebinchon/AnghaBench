
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_9__ {TYPE_1__* rd_rel; int * rd_opcintype; int * rd_opfamily; } ;
struct TYPE_8__ {int ssup_attno; int ssup_reverse; int * comparator; } ;
struct TYPE_7__ {scalar_t__ relam; } ;
typedef TYPE_2__* SortSupport ;
typedef TYPE_3__* Relation ;
typedef int Oid ;


 int Assert (int ) ;
 scalar_t__ BTGreaterStrategyNumber ;
 scalar_t__ BTLessStrategyNumber ;
 scalar_t__ BTREE_AM_OID ;
 int ERROR ;
 int FinishSortSupportFunction (int ,int ,TYPE_2__*) ;
 int elog (int ,char*,scalar_t__) ;

void
PrepareSortSupportFromIndexRel(Relation indexRel, int16 strategy,
          SortSupport ssup)
{
 Oid opfamily = indexRel->rd_opfamily[ssup->ssup_attno - 1];
 Oid opcintype = indexRel->rd_opcintype[ssup->ssup_attno - 1];

 Assert(ssup->comparator == ((void*)0));

 if (indexRel->rd_rel->relam != BTREE_AM_OID)
  elog(ERROR, "unexpected non-btree AM: %u", indexRel->rd_rel->relam);
 if (strategy != BTGreaterStrategyNumber &&
  strategy != BTLessStrategyNumber)
  elog(ERROR, "unexpected sort support strategy: %d", strategy);
 ssup->ssup_reverse = (strategy == BTGreaterStrategyNumber);

 FinishSortSupportFunction(opfamily, opcintype, ssup);
}

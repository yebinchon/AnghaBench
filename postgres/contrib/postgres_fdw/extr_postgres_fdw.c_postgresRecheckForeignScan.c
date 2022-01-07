
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_7__ {scalar_t__ plan; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;
struct TYPE_10__ {TYPE_2__ ss; } ;
struct TYPE_9__ {scalar_t__ scanrelid; } ;
typedef TYPE_3__ Scan ;
typedef int PlanState ;
typedef scalar_t__ Index ;
typedef TYPE_4__ ForeignScanState ;


 int Assert (int ) ;
 int ExecCopySlot (int *,int *) ;
 int * ExecProcNode (int *) ;
 scalar_t__ TupIsNull (int *) ;
 int * outerPlanState (TYPE_4__*) ;

__attribute__((used)) static bool
postgresRecheckForeignScan(ForeignScanState *node, TupleTableSlot *slot)
{
 Index scanrelid = ((Scan *) node->ss.ps.plan)->scanrelid;
 PlanState *outerPlan = outerPlanState(node);
 TupleTableSlot *result;


 if (scanrelid > 0)
  return 1;

 Assert(outerPlan != ((void*)0));


 result = ExecProcNode(outerPlan);
 if (TupIsNull(result))
  return 0;


 ExecCopySlot(slot, result);

 return 1;
}

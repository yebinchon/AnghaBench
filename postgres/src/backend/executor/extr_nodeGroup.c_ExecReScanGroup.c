
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ss_ScanTupleSlot; } ;
struct TYPE_10__ {int grp_done; TYPE_1__ ss; } ;
struct TYPE_9__ {int * chgParam; } ;
typedef TYPE_2__ PlanState ;
typedef TYPE_3__ GroupState ;


 int ExecClearTuple (int ) ;
 int ExecReScan (TYPE_2__*) ;
 TYPE_2__* outerPlanState (TYPE_3__*) ;

void
ExecReScanGroup(GroupState *node)
{
 PlanState *outerPlan = outerPlanState(node);

 node->grp_done = 0;

 ExecClearTuple(node->ss.ss_ScanTupleSlot);





 if (outerPlan->chgParam == ((void*)0))
  ExecReScan(outerPlan);
}

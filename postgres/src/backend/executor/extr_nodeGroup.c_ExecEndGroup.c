
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ss_ScanTupleSlot; int ps; } ;
struct TYPE_6__ {TYPE_1__ ss; } ;
typedef int PlanState ;
typedef TYPE_2__ GroupState ;


 int ExecClearTuple (int ) ;
 int ExecEndNode (int *) ;
 int ExecFreeExprContext (int *) ;
 int * outerPlanState (TYPE_2__*) ;

void
ExecEndGroup(GroupState *node)
{
 PlanState *outerPlan;

 ExecFreeExprContext(&node->ss.ps);


 ExecClearTuple(node->ss.ss_ScanTupleSlot);

 outerPlan = outerPlanState(node);
 ExecEndNode(outerPlan);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ps; } ;
typedef int PlanState ;
typedef TYPE_1__ HashState ;


 int ExecEndNode (int *) ;
 int ExecFreeExprContext (int *) ;
 int * outerPlanState (TYPE_1__*) ;

void
ExecEndHash(HashState *node)
{
 PlanState *outerPlan;




 ExecFreeExprContext(&node->ps);




 outerPlan = outerPlanState(node);
 ExecEndNode(outerPlan);
}

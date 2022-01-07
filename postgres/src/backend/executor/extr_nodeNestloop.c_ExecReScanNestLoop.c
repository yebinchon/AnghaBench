
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nl_NeedNewOuter; int nl_MatchedOuter; } ;
struct TYPE_7__ {int * chgParam; } ;
typedef TYPE_1__ PlanState ;
typedef TYPE_2__ NestLoopState ;


 int ExecReScan (TYPE_1__*) ;
 TYPE_1__* outerPlanState (TYPE_2__*) ;

void
ExecReScanNestLoop(NestLoopState *node)
{
 PlanState *outerPlan = outerPlanState(node);





 if (outerPlan->chgParam == ((void*)0))
  ExecReScan(outerPlan);







 node->nl_NeedNewOuter = 1;
 node->nl_MatchedOuter = 0;
}

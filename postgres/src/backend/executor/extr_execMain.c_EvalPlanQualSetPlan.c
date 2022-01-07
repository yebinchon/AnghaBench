
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * arowMarks; int * plan; } ;
typedef int Plan ;
typedef int List ;
typedef TYPE_1__ EPQState ;


 int EvalPlanQualEnd (TYPE_1__*) ;

void
EvalPlanQualSetPlan(EPQState *epqstate, Plan *subplan, List *auxrowmarks)
{

 EvalPlanQualEnd(epqstate);

 epqstate->plan = subplan;

 epqstate->arowMarks = auxrowmarks;
}

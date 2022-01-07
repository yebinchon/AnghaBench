
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ResultState ;
typedef int PlanState ;


 int ERROR ;
 int ExecRestrPos (int *) ;
 int elog (int ,char*) ;
 int * outerPlanState (int *) ;

void
ExecResultRestrPos(ResultState *node)
{
 PlanState *outerPlan = outerPlanState(node);

 if (outerPlan != ((void*)0))
  ExecRestrPos(outerPlan);
 else
  elog(ERROR, "Result nodes do not support mark/restore");
}

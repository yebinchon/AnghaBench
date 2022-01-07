
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ResultState ;
typedef int PlanState ;


 int DEBUG2 ;
 int ExecMarkPos (int *) ;
 int elog (int ,char*) ;
 int * outerPlanState (int *) ;

void
ExecResultMarkPos(ResultState *node)
{
 PlanState *outerPlan = outerPlanState(node);

 if (outerPlan != ((void*)0))
  ExecMarkPos(outerPlan);
 else
  elog(DEBUG2, "Result nodes do not support mark/restore");
}

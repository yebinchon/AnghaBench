
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_6__ {int ps_ResultTupleSlot; int ps_ExprContext; TYPE_1__* plan; int ps_ProjInfo; } ;
struct TYPE_5__ {int targetlist; } ;
typedef TYPE_2__ PlanState ;


 int ExecBuildProjectionInfo (int ,int ,int ,TYPE_2__*,int ) ;

void
ExecAssignProjectionInfo(PlanState *planstate,
       TupleDesc inputDesc)
{
 planstate->ps_ProjInfo =
  ExecBuildProjectionInfo(planstate->plan->targetlist,
        planstate->ps_ExprContext,
        planstate->ps_ResultTupleSlot,
        planstate,
        inputDesc);
}

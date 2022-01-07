
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_8__ {int resultopsset; int scanopsset; int resultopsfixed; int scanopsfixed; int * resultops; int ps_ResultTupleSlot; int * scanops; int * ps_ProjInfo; TYPE_1__* plan; } ;
struct TYPE_7__ {int targetlist; } ;
typedef TYPE_2__ PlanState ;
typedef int Index ;


 int ExecAssignProjectionInfo (TYPE_2__*,int ) ;
 int ExecInitResultSlot (TYPE_2__*,int *) ;
 int TTSOpsVirtual ;
 scalar_t__ tlist_matches_tupdesc (TYPE_2__*,int ,int ,int ) ;

void
ExecConditionalAssignProjectionInfo(PlanState *planstate, TupleDesc inputDesc,
         Index varno)
{
 if (tlist_matches_tupdesc(planstate,
         planstate->plan->targetlist,
         varno,
         inputDesc))
 {
  planstate->ps_ProjInfo = ((void*)0);
  planstate->resultopsset = planstate->scanopsset;
  planstate->resultopsfixed = planstate->scanopsfixed;
  planstate->resultops = planstate->scanops;
 }
 else
 {
  if (!planstate->ps_ResultTupleSlot)
  {
   ExecInitResultSlot(planstate, &TTSOpsVirtual);
   planstate->resultops = &TTSOpsVirtual;
   planstate->resultopsfixed = 1;
   planstate->resultopsset = 1;
  }
  ExecAssignProjectionInfo(planstate, inputDesc);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleTableSlotOps ;
struct TYPE_5__ {int const* tts_ops; } ;
struct TYPE_4__ {int resultopsfixed; TYPE_2__* ps_ResultTupleSlot; scalar_t__ resultopsset; int const* resultops; } ;
typedef TYPE_1__ PlanState ;


 int const TTSOpsVirtual ;
 int TTS_FIXED (TYPE_2__*) ;

const TupleTableSlotOps *
ExecGetResultSlotOps(PlanState *planstate, bool *isfixed)
{
 if (planstate->resultopsset && planstate->resultops)
 {
  if (isfixed)
   *isfixed = planstate->resultopsfixed;
  return planstate->resultops;
 }

 if (isfixed)
 {
  if (planstate->resultopsset)
   *isfixed = planstate->resultopsfixed;
  else if (planstate->ps_ResultTupleSlot)
   *isfixed = TTS_FIXED(planstate->ps_ResultTupleSlot);
  else
   *isfixed = 0;
 }

 if (!planstate->ps_ResultTupleSlot)
  return &TTSOpsVirtual;

 return planstate->ps_ResultTupleSlot->tts_ops;
}

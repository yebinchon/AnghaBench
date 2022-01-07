
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleTableSlotOps ;
typedef int TupleTableSlot ;
struct TYPE_5__ {int resultopsset; int const* resultops; int * ps_ResultTupleDesc; int resultopsfixed; int * ps_ResultTupleSlot; TYPE_1__* state; } ;
struct TYPE_4__ {int es_tupleTable; } ;
typedef TYPE_2__ PlanState ;


 int * ExecAllocTableSlot (int *,int *,int const*) ;

void
ExecInitResultSlot(PlanState *planstate, const TupleTableSlotOps *tts_ops)
{
 TupleTableSlot *slot;

 slot = ExecAllocTableSlot(&planstate->state->es_tupleTable,
         planstate->ps_ResultTupleDesc, tts_ops);
 planstate->ps_ResultTupleSlot = slot;

 planstate->resultopsfixed = planstate->ps_ResultTupleDesc != ((void*)0);
 planstate->resultops = tts_ops;
 planstate->resultopsset = 1;
}

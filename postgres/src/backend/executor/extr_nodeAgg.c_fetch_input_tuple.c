
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_4__ {scalar_t__ sort_out; int * sort_slot; scalar_t__ sort_in; } ;
typedef TYPE_1__ AggState ;


 int CHECK_FOR_INTERRUPTS () ;
 int * ExecProcNode (int ) ;
 int TupIsNull (int *) ;
 int outerPlanState (TYPE_1__*) ;
 int tuplesort_gettupleslot (scalar_t__,int,int,int *,int *) ;
 int tuplesort_puttupleslot (scalar_t__,int *) ;

__attribute__((used)) static TupleTableSlot *
fetch_input_tuple(AggState *aggstate)
{
 TupleTableSlot *slot;

 if (aggstate->sort_in)
 {

  CHECK_FOR_INTERRUPTS();
  if (!tuplesort_gettupleslot(aggstate->sort_in, 1, 0,
         aggstate->sort_slot, ((void*)0)))
   return ((void*)0);
  slot = aggstate->sort_slot;
 }
 else
  slot = ExecProcNode(outerPlanState(aggstate));

 if (!TupIsNull(slot) && aggstate->sort_out)
  tuplesort_puttupleslot(aggstate->sort_out, slot);

 return slot;
}

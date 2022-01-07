
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int * tts_isnull; int * tts_values; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_21__ {size_t current_set; TYPE_4__* tmpcontext; } ;
struct TYPE_20__ {int numTransInputs; int numDistinctCols; int ** sortstates; int equalfnMulti; TYPE_2__* uniqslot; TYPE_2__* sortslot; TYPE_3__* transfn_fcinfo; } ;
struct TYPE_19__ {TYPE_2__* ecxt_outertuple; TYPE_2__* ecxt_innertuple; } ;
struct TYPE_18__ {TYPE_1__* args; } ;
struct TYPE_16__ {int isnull; int value; } ;
typedef TYPE_3__* FunctionCallInfo ;
typedef TYPE_4__ ExprContext ;
typedef scalar_t__ Datum ;
typedef TYPE_5__* AggStatePerTrans ;
typedef int AggStatePerGroup ;
typedef TYPE_6__ AggState ;


 int CHECK_FOR_INTERRUPTS () ;
 int ExecClearTuple (TYPE_2__*) ;
 int ExecQual (int ,TYPE_4__*) ;
 int ResetExprContext (TYPE_4__*) ;
 int advance_transition_function (TYPE_6__*,TYPE_5__*,int ) ;
 int slot_getsomeattrs (TYPE_2__*,int) ;
 int tuplesort_end (int *) ;
 scalar_t__ tuplesort_gettupleslot (int *,int,int,TYPE_2__*,scalar_t__*) ;
 int tuplesort_performsort (int *) ;

__attribute__((used)) static void
process_ordered_aggregate_multi(AggState *aggstate,
        AggStatePerTrans pertrans,
        AggStatePerGroup pergroupstate)
{
 ExprContext *tmpcontext = aggstate->tmpcontext;
 FunctionCallInfo fcinfo = pertrans->transfn_fcinfo;
 TupleTableSlot *slot1 = pertrans->sortslot;
 TupleTableSlot *slot2 = pertrans->uniqslot;
 int numTransInputs = pertrans->numTransInputs;
 int numDistinctCols = pertrans->numDistinctCols;
 Datum newAbbrevVal = (Datum) 0;
 Datum oldAbbrevVal = (Datum) 0;
 bool haveOldValue = 0;
 TupleTableSlot *save = aggstate->tmpcontext->ecxt_outertuple;
 int i;

 tuplesort_performsort(pertrans->sortstates[aggstate->current_set]);

 ExecClearTuple(slot1);
 if (slot2)
  ExecClearTuple(slot2);

 while (tuplesort_gettupleslot(pertrans->sortstates[aggstate->current_set],
          1, 1, slot1, &newAbbrevVal))
 {
  CHECK_FOR_INTERRUPTS();

  tmpcontext->ecxt_outertuple = slot1;
  tmpcontext->ecxt_innertuple = slot2;

  if (numDistinctCols == 0 ||
   !haveOldValue ||
   newAbbrevVal != oldAbbrevVal ||
   !ExecQual(pertrans->equalfnMulti, tmpcontext))
  {




   slot_getsomeattrs(slot1, numTransInputs);



   for (i = 0; i < numTransInputs; i++)
   {
    fcinfo->args[i + 1].value = slot1->tts_values[i];
    fcinfo->args[i + 1].isnull = slot1->tts_isnull[i];
   }

   advance_transition_function(aggstate, pertrans, pergroupstate);

   if (numDistinctCols > 0)
   {

    TupleTableSlot *tmpslot = slot2;

    slot2 = slot1;
    slot1 = tmpslot;

    oldAbbrevVal = newAbbrevVal;
    haveOldValue = 1;
   }
  }


  ResetExprContext(tmpcontext);

  ExecClearTuple(slot1);
 }

 if (slot2)
  ExecClearTuple(slot2);

 tuplesort_end(pertrans->sortstates[aggstate->current_set]);
 pertrans->sortstates[aggstate->current_set] = ((void*)0);


 tmpcontext->ecxt_outertuple = save;
}

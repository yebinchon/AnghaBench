
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {size_t current_set; TYPE_1__* tmpcontext; } ;
struct TYPE_13__ {int numDistinctCols; int ** sortstates; int inputtypeByVal; int aggCollation; int equalfnOne; TYPE_3__* transfn_fcinfo; } ;
struct TYPE_12__ {TYPE_2__* args; } ;
struct TYPE_11__ {scalar_t__ value; int isnull; } ;
struct TYPE_10__ {int ecxt_per_tuple_memory; } ;
typedef int MemoryContext ;
typedef TYPE_3__* FunctionCallInfo ;
typedef scalar_t__ Datum ;
typedef TYPE_4__* AggStatePerTrans ;
typedef int AggStatePerGroup ;
typedef TYPE_5__ AggState ;


 int Assert (int) ;
 scalar_t__ DatumGetBool (int ) ;
 int DatumGetPointer (scalar_t__) ;
 int FunctionCall2Coll (int *,int ,scalar_t__,scalar_t__) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int advance_transition_function (TYPE_5__*,TYPE_4__*,int ) ;
 int pfree (int ) ;
 int tuplesort_end (int *) ;
 scalar_t__ tuplesort_getdatum (int *,int,scalar_t__*,int*,scalar_t__*) ;
 int tuplesort_performsort (int *) ;

__attribute__((used)) static void
process_ordered_aggregate_single(AggState *aggstate,
         AggStatePerTrans pertrans,
         AggStatePerGroup pergroupstate)
{
 Datum oldVal = (Datum) 0;
 bool oldIsNull = 1;
 bool haveOldVal = 0;
 MemoryContext workcontext = aggstate->tmpcontext->ecxt_per_tuple_memory;
 MemoryContext oldContext;
 bool isDistinct = (pertrans->numDistinctCols > 0);
 Datum newAbbrevVal = (Datum) 0;
 Datum oldAbbrevVal = (Datum) 0;
 FunctionCallInfo fcinfo = pertrans->transfn_fcinfo;
 Datum *newVal;
 bool *isNull;

 Assert(pertrans->numDistinctCols < 2);

 tuplesort_performsort(pertrans->sortstates[aggstate->current_set]);


 newVal = &fcinfo->args[1].value;
 isNull = &fcinfo->args[1].isnull;







 while (tuplesort_getdatum(pertrans->sortstates[aggstate->current_set],
         1, newVal, isNull, &newAbbrevVal))
 {




  MemoryContextReset(workcontext);
  oldContext = MemoryContextSwitchTo(workcontext);




  if (isDistinct &&
   haveOldVal &&
   ((oldIsNull && *isNull) ||
    (!oldIsNull && !*isNull &&
     oldAbbrevVal == newAbbrevVal &&
     DatumGetBool(FunctionCall2Coll(&pertrans->equalfnOne,
            pertrans->aggCollation,
            oldVal, *newVal)))))
  {

   if (!pertrans->inputtypeByVal && !*isNull)
    pfree(DatumGetPointer(*newVal));
  }
  else
  {
   advance_transition_function(aggstate, pertrans, pergroupstate);

   if (!oldIsNull && !pertrans->inputtypeByVal)
    pfree(DatumGetPointer(oldVal));

   oldVal = *newVal;
   oldAbbrevVal = newAbbrevVal;
   oldIsNull = *isNull;
   haveOldVal = 1;
  }

  MemoryContextSwitchTo(oldContext);
 }

 if (!oldIsNull && !pertrans->inputtypeByVal)
  pfree(DatumGetPointer(oldVal));

 tuplesort_end(pertrans->sortstates[aggstate->current_set]);
 pertrans->sortstates[aggstate->current_set] = ((void*)0);
}

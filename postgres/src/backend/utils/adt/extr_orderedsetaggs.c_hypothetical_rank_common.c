
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_10__ {int* tts_isnull; int * tts_values; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_11__ {int number_of_rows; int sort_done; int sortstate; TYPE_1__* qstate; } ;
struct TYPE_9__ {TYPE_2__* tupslot; int tupdesc; } ;
typedef TYPE_3__ OSAPerGroupState ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 scalar_t__ AGG_CONTEXT_AGGREGATE ;
 scalar_t__ AggCheckCallContext (int ,int *) ;
 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ DatumGetInt32 (int ) ;
 int ERROR ;
 int ExecClearTuple (TYPE_2__*) ;
 int ExecStoreVirtualTuple (TYPE_2__*) ;
 int Int32GetDatum (int) ;
 int PG_ARGISNULL (int) ;
 int PG_GETARG_DATUM (int) ;
 scalar_t__ PG_GETARG_POINTER (int ) ;
 int PG_NARGS () ;
 int elog (int ,char*) ;
 int hypothetical_check_argtypes (int ,int,int ) ;
 int slot_getattr (TYPE_2__*,int,int*) ;
 scalar_t__ tuplesort_gettupleslot (int ,int,int,TYPE_2__*,int *) ;
 int tuplesort_performsort (int ) ;
 int tuplesort_puttupleslot (int ,TYPE_2__*) ;

__attribute__((used)) static int64
hypothetical_rank_common(FunctionCallInfo fcinfo, int flag,
       int64 *number_of_rows)
{
 int nargs = PG_NARGS() - 1;
 int64 rank = 1;
 OSAPerGroupState *osastate;
 TupleTableSlot *slot;
 int i;

 Assert(AggCheckCallContext(fcinfo, ((void*)0)) == AGG_CONTEXT_AGGREGATE);


 if (PG_ARGISNULL(0))
 {
  *number_of_rows = 0;
  return 1;
 }

 osastate = (OSAPerGroupState *) PG_GETARG_POINTER(0);
 *number_of_rows = osastate->number_of_rows;


 if (nargs % 2 != 0)
  elog(ERROR, "wrong number of arguments in hypothetical-set function");
 nargs /= 2;

 hypothetical_check_argtypes(fcinfo, nargs, osastate->qstate->tupdesc);


 Assert(!osastate->sort_done);


 slot = osastate->qstate->tupslot;
 ExecClearTuple(slot);
 for (i = 0; i < nargs; i++)
 {
  slot->tts_values[i] = PG_GETARG_DATUM(i + 1);
  slot->tts_isnull[i] = PG_ARGISNULL(i + 1);
 }
 slot->tts_values[i] = Int32GetDatum(flag);
 slot->tts_isnull[i] = 0;
 ExecStoreVirtualTuple(slot);

 tuplesort_puttupleslot(osastate->sortstate, slot);


 tuplesort_performsort(osastate->sortstate);
 osastate->sort_done = 1;


 while (tuplesort_gettupleslot(osastate->sortstate, 1, 1, slot, ((void*)0)))
 {
  bool isnull;
  Datum d = slot_getattr(slot, nargs + 1, &isnull);

  if (!isnull && DatumGetInt32(d) != 0)
   break;

  rank++;

  CHECK_FOR_INTERRUPTS();
 }

 ExecClearTuple(slot);

 return rank;
}

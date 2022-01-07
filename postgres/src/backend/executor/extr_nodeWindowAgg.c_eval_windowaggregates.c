
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_20__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ int64 ;
typedef TYPE_3__* WindowStatePerAgg ;
typedef TYPE_4__* WindowObject ;
struct TYPE_21__ {TYPE_6__* ps_ExprContext; } ;
struct TYPE_23__ {TYPE_1__ ps; } ;
struct TYPE_26__ {int numaggs; scalar_t__ frameheadpos; scalar_t__ aggregatedbase; int frameOptions; scalar_t__ currentpos; scalar_t__ aggregatedupto; scalar_t__ aggcontext; int * perfunc; TYPE_3__* peragg; TYPE_20__* tmpcontext; int * temp_slot_1; int * agg_row_slot; TYPE_4__* agg_winobj; TYPE_2__ ss; } ;
typedef TYPE_5__ WindowAggState ;
typedef int TupleTableSlot ;
struct TYPE_27__ {void** ecxt_aggvalues; int* ecxt_aggnulls; } ;
struct TYPE_25__ {scalar_t__ markptr; } ;
struct TYPE_24__ {int wfuncno; void* resultValue; int resultValueIsNull; int restart; scalar_t__ aggcontext; int resulttypeLen; int resulttypeByVal; int invtransfn_oid; } ;
struct TYPE_22__ {int * ecxt_outertuple; } ;
typedef scalar_t__ MemoryContext ;
typedef TYPE_6__ ExprContext ;
typedef void* Datum ;


 int Assert (int) ;
 int DatumGetPointer (void*) ;
 int ERROR ;
 int ExecClearTuple (int *) ;
 int FRAMEOPTION_END_CURRENT_ROW ;
 int FRAMEOPTION_END_UNBOUNDED_FOLLOWING ;
 int FRAMEOPTION_EXCLUSION ;
 int MemoryContextResetAndDeleteChildren (scalar_t__) ;
 scalar_t__ MemoryContextSwitchTo (scalar_t__) ;
 int OidIsValid (int ) ;
 int ResetExprContext (TYPE_20__*) ;
 scalar_t__ TupIsNull (int *) ;
 int WinSetMarkPosition (TYPE_4__*,scalar_t__) ;
 int advance_windowaggregate (TYPE_5__*,int *,TYPE_3__*) ;
 int advance_windowaggregate_base (TYPE_5__*,int *,TYPE_3__*) ;
 void* datumCopy (void*,int ,int ) ;
 int elog (int ,char*) ;
 int finalize_windowaggregate (TYPE_5__*,int *,TYPE_3__*,void**,int*) ;
 int initialize_windowaggregate (TYPE_5__*,int *,TYPE_3__*) ;
 int pfree (int ) ;
 int row_is_in_frame (TYPE_5__*,scalar_t__,int *) ;
 int update_frameheadpos (TYPE_5__*) ;
 int window_gettupleslot (TYPE_4__*,scalar_t__,int *) ;

__attribute__((used)) static void
eval_windowaggregates(WindowAggState *winstate)
{
 WindowStatePerAgg peraggstate;
 int wfuncno,
    numaggs,
    numaggs_restart,
    i;
 int64 aggregatedupto_nonrestarted;
 MemoryContext oldContext;
 ExprContext *econtext;
 WindowObject agg_winobj;
 TupleTableSlot *agg_row_slot;
 TupleTableSlot *temp_slot;

 numaggs = winstate->numaggs;
 if (numaggs == 0)
  return;


 econtext = winstate->ss.ps.ps_ExprContext;
 agg_winobj = winstate->agg_winobj;
 agg_row_slot = winstate->agg_row_slot;
 temp_slot = winstate->temp_slot_1;
 update_frameheadpos(winstate);
 if (winstate->frameheadpos < winstate->aggregatedbase)
  elog(ERROR, "window frame head moved backward");
 if (winstate->aggregatedbase == winstate->frameheadpos &&
  (winstate->frameOptions & (FRAMEOPTION_END_UNBOUNDED_FOLLOWING |
           FRAMEOPTION_END_CURRENT_ROW)) &&
  !(winstate->frameOptions & FRAMEOPTION_EXCLUSION) &&
  winstate->aggregatedbase <= winstate->currentpos &&
  winstate->aggregatedupto > winstate->currentpos)
 {
  for (i = 0; i < numaggs; i++)
  {
   peraggstate = &winstate->peragg[i];
   wfuncno = peraggstate->wfuncno;
   econtext->ecxt_aggvalues[wfuncno] = peraggstate->resultValue;
   econtext->ecxt_aggnulls[wfuncno] = peraggstate->resultValueIsNull;
  }
  return;
 }
 numaggs_restart = 0;
 for (i = 0; i < numaggs; i++)
 {
  peraggstate = &winstate->peragg[i];
  if (winstate->currentpos == 0 ||
   (winstate->aggregatedbase != winstate->frameheadpos &&
    !OidIsValid(peraggstate->invtransfn_oid)) ||
   (winstate->frameOptions & FRAMEOPTION_EXCLUSION) ||
   winstate->aggregatedupto <= winstate->frameheadpos)
  {
   peraggstate->restart = 1;
   numaggs_restart++;
  }
  else
   peraggstate->restart = 0;
 }
 while (numaggs_restart < numaggs &&
     winstate->aggregatedbase < winstate->frameheadpos)
 {




  if (!window_gettupleslot(agg_winobj, winstate->aggregatedbase,
         temp_slot))
   elog(ERROR, "could not re-fetch previously fetched frame row");


  winstate->tmpcontext->ecxt_outertuple = temp_slot;





  for (i = 0; i < numaggs; i++)
  {
   bool ok;

   peraggstate = &winstate->peragg[i];
   if (peraggstate->restart)
    continue;

   wfuncno = peraggstate->wfuncno;
   ok = advance_windowaggregate_base(winstate,
             &winstate->perfunc[wfuncno],
             peraggstate);
   if (!ok)
   {

    peraggstate->restart = 1;
    numaggs_restart++;
   }
  }


  ResetExprContext(winstate->tmpcontext);


  winstate->aggregatedbase++;
  ExecClearTuple(temp_slot);
 }






 winstate->aggregatedbase = winstate->frameheadpos;





 if (agg_winobj->markptr >= 0)
  WinSetMarkPosition(agg_winobj, winstate->frameheadpos);
 if (numaggs_restart > 0)
  MemoryContextResetAndDeleteChildren(winstate->aggcontext);
 for (i = 0; i < numaggs; i++)
 {
  peraggstate = &winstate->peragg[i];


  Assert(peraggstate->aggcontext != winstate->aggcontext ||
      numaggs_restart == 0 ||
      peraggstate->restart);

  if (peraggstate->restart)
  {
   wfuncno = peraggstate->wfuncno;
   initialize_windowaggregate(winstate,
            &winstate->perfunc[wfuncno],
            peraggstate);
  }
  else if (!peraggstate->resultValueIsNull)
  {
   if (!peraggstate->resulttypeByVal)
    pfree(DatumGetPointer(peraggstate->resultValue));
   peraggstate->resultValue = (Datum) 0;
   peraggstate->resultValueIsNull = 1;
  }
 }
 aggregatedupto_nonrestarted = winstate->aggregatedupto;
 if (numaggs_restart > 0 &&
  winstate->aggregatedupto != winstate->frameheadpos)
 {
  winstate->aggregatedupto = winstate->frameheadpos;
  ExecClearTuple(agg_row_slot);
 }
 for (;;)
 {
  int ret;


  if (TupIsNull(agg_row_slot))
  {
   if (!window_gettupleslot(agg_winobj, winstate->aggregatedupto,
          agg_row_slot))
    break;
  }





  ret = row_is_in_frame(winstate, winstate->aggregatedupto, agg_row_slot);
  if (ret < 0)
   break;
  if (ret == 0)
   goto next_tuple;


  winstate->tmpcontext->ecxt_outertuple = agg_row_slot;


  for (i = 0; i < numaggs; i++)
  {
   peraggstate = &winstate->peragg[i];


   if (!peraggstate->restart &&
    winstate->aggregatedupto < aggregatedupto_nonrestarted)
    continue;

   wfuncno = peraggstate->wfuncno;
   advance_windowaggregate(winstate,
         &winstate->perfunc[wfuncno],
         peraggstate);
  }

next_tuple:

  ResetExprContext(winstate->tmpcontext);


  winstate->aggregatedupto++;
  ExecClearTuple(agg_row_slot);
 }


 Assert(aggregatedupto_nonrestarted <= winstate->aggregatedupto);




 for (i = 0; i < numaggs; i++)
 {
  Datum *result;
  bool *isnull;

  peraggstate = &winstate->peragg[i];
  wfuncno = peraggstate->wfuncno;
  result = &econtext->ecxt_aggvalues[wfuncno];
  isnull = &econtext->ecxt_aggnulls[wfuncno];
  finalize_windowaggregate(winstate,
         &winstate->perfunc[wfuncno],
         peraggstate,
         result, isnull);
  if (!peraggstate->resulttypeByVal && !*isnull)
  {
   oldContext = MemoryContextSwitchTo(peraggstate->aggcontext);
   peraggstate->resultValue =
    datumCopy(*result,
        peraggstate->resulttypeByVal,
        peraggstate->resulttypeLen);
   MemoryContextSwitchTo(oldContext);
  }
  else
  {
   peraggstate->resultValue = *result;
  }
  peraggstate->resultValueIsNull = *isnull;
 }
}

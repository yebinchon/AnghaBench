
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


struct TYPE_18__ {int tts_mcxt; } ;
typedef TYPE_3__ TupleTableSlot ;
struct TYPE_21__ {int nargs; int isnull; TYPE_2__* args; int * resultinfo; } ;
struct TYPE_20__ {int allowedModes; int returnMode; scalar_t__ isDone; int * setDesc; int * setResult; int expectedDesc; int * econtext; int type; } ;
struct TYPE_16__ {scalar_t__ fn_strict; } ;
struct TYPE_19__ {int setArgsValid; int shutdown_reg; TYPE_1__ func; int funcResultDesc; int * args; TYPE_6__* fcinfo; int * funcResultStore; TYPE_3__* funcResultSlot; scalar_t__ funcReturnsTuple; } ;
struct TYPE_17__ {scalar_t__ isnull; } ;
typedef TYPE_4__ SetExprState ;
typedef TYPE_5__ ReturnSetInfo ;
typedef int PgStat_FunctionCallUsage ;
typedef int Node ;
typedef int MemoryContext ;
typedef int List ;
typedef TYPE_6__* FunctionCallInfo ;
typedef scalar_t__ ExprDoneCond ;
typedef int ExprContext ;
typedef scalar_t__ Datum ;


 int ERRCODE_E_R_I_E_SRF_PROTOCOL_VIOLATED ;
 int ERROR ;
 int ExecEvalFuncArgs (TYPE_6__*,int *,int *) ;
 scalar_t__ ExecFetchSlotHeapTupleDatum (TYPE_3__*) ;
 int ExecPrepareTuplestoreResult (TYPE_4__*,int *,int *,int *) ;
 scalar_t__ ExprEndResult ;
 scalar_t__ ExprMultipleResult ;
 scalar_t__ ExprSingleResult ;
 scalar_t__ FunctionCallInvoke (TYPE_6__*) ;
 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (TYPE_4__*) ;
 int RegisterExprContextCallback (int *,int ,int ) ;
 int SFRM_Materialize ;
 int SFRM_ValuePerCall ;
 int ShutdownSetExpr ;
 int T_ReturnSetInfo ;
 int check_stack_depth () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int pgstat_end_function_usage (int *,int) ;
 int pgstat_init_function_usage (TYPE_6__*,int *) ;
 scalar_t__ slot_getattr (TYPE_3__*,int,int*) ;
 int tuplestore_end (int *) ;
 int tuplestore_gettupleslot (int *,int,int,TYPE_3__*) ;

Datum
ExecMakeFunctionResultSet(SetExprState *fcache,
        ExprContext *econtext,
        MemoryContext argContext,
        bool *isNull,
        ExprDoneCond *isDone)
{
 List *arguments;
 Datum result;
 FunctionCallInfo fcinfo;
 PgStat_FunctionCallUsage fcusage;
 ReturnSetInfo rsinfo;
 bool callit;
 int i;

restart:


 check_stack_depth();






 if (fcache->funcResultStore)
 {
  TupleTableSlot *slot = fcache->funcResultSlot;
  MemoryContext oldContext;
  bool foundTup;






  oldContext = MemoryContextSwitchTo(slot->tts_mcxt);
  foundTup = tuplestore_gettupleslot(fcache->funcResultStore, 1, 0,
             fcache->funcResultSlot);
  MemoryContextSwitchTo(oldContext);

  if (foundTup)
  {
   *isDone = ExprMultipleResult;
   if (fcache->funcReturnsTuple)
   {

    *isNull = 0;
    return ExecFetchSlotHeapTupleDatum(fcache->funcResultSlot);
   }
   else
   {

    return slot_getattr(fcache->funcResultSlot, 1, isNull);
   }
  }

  tuplestore_end(fcache->funcResultStore);
  fcache->funcResultStore = ((void*)0);
  *isDone = ExprEndResult;
  *isNull = 1;
  return (Datum) 0;
 }
 fcinfo = fcache->fcinfo;
 arguments = fcache->args;
 if (!fcache->setArgsValid)
 {
  MemoryContext oldContext = MemoryContextSwitchTo(argContext);

  ExecEvalFuncArgs(fcinfo, arguments, econtext);
  MemoryContextSwitchTo(oldContext);
 }
 else
 {

  fcache->setArgsValid = 0;
 }






 fcinfo->resultinfo = (Node *) &rsinfo;
 rsinfo.type = T_ReturnSetInfo;
 rsinfo.econtext = econtext;
 rsinfo.expectedDesc = fcache->funcResultDesc;
 rsinfo.allowedModes = (int) (SFRM_ValuePerCall | SFRM_Materialize);

 rsinfo.returnMode = SFRM_ValuePerCall;

 rsinfo.setResult = ((void*)0);
 rsinfo.setDesc = ((void*)0);





 callit = 1;
 if (fcache->func.fn_strict)
 {
  for (i = 0; i < fcinfo->nargs; i++)
  {
   if (fcinfo->args[i].isnull)
   {
    callit = 0;
    break;
   }
  }
 }

 if (callit)
 {
  pgstat_init_function_usage(fcinfo, &fcusage);

  fcinfo->isnull = 0;
  rsinfo.isDone = ExprSingleResult;
  result = FunctionCallInvoke(fcinfo);
  *isNull = fcinfo->isnull;
  *isDone = rsinfo.isDone;

  pgstat_end_function_usage(&fcusage,
          rsinfo.isDone != ExprMultipleResult);
 }
 else
 {

  result = (Datum) 0;
  *isNull = 1;
  *isDone = ExprEndResult;
 }


 if (rsinfo.returnMode == SFRM_ValuePerCall)
 {
  if (*isDone != ExprEndResult)
  {



   if (*isDone == ExprMultipleResult)
   {
    fcache->setArgsValid = 1;

    if (!fcache->shutdown_reg)
    {
     RegisterExprContextCallback(econtext,
            ShutdownSetExpr,
            PointerGetDatum(fcache));
     fcache->shutdown_reg = 1;
    }
   }
  }
 }
 else if (rsinfo.returnMode == SFRM_Materialize)
 {

  if (rsinfo.isDone != ExprSingleResult)
   ereport(ERROR,
     (errcode(ERRCODE_E_R_I_E_SRF_PROTOCOL_VIOLATED),
      errmsg("table-function protocol for materialize mode was not followed")));
  if (rsinfo.setResult != ((void*)0))
  {

   ExecPrepareTuplestoreResult(fcache, econtext,
          rsinfo.setResult,
          rsinfo.setDesc);

   goto restart;
  }

  *isDone = ExprEndResult;
  *isNull = 1;
  result = (Datum) 0;
 }
 else
  ereport(ERROR,
    (errcode(ERRCODE_E_R_I_E_SRF_PROTOCOL_VIOLATED),
     errmsg("unrecognized table-function returnMode: %d",
      (int) rsinfo.returnMode)));

 return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int Tuplestorestate ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_13__ {int fn_mcxt; } ;
struct TYPE_15__ {int shutdown_reg; TYPE_2__* funcResultDesc; int * funcResultSlot; TYPE_1__ func; int * funcResultStore; } ;
struct TYPE_14__ {int tdrefcount; } ;
typedef TYPE_3__ SetExprState ;
typedef int MemoryContext ;
typedef int ExprContext ;


 TYPE_2__* CreateTupleDescCopy (TYPE_2__*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int FreeTupleDesc (TYPE_2__*) ;
 int * MakeSingleTupleTableSlot (TYPE_2__*,int *) ;
 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (TYPE_3__*) ;
 int RegisterExprContextCallback (int *,int ,int ) ;
 int ShutdownSetExpr ;
 int TTSOpsMinimalTuple ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int tupledesc_match (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void
ExecPrepareTuplestoreResult(SetExprState *sexpr,
       ExprContext *econtext,
       Tuplestorestate *resultStore,
       TupleDesc resultDesc)
{
 sexpr->funcResultStore = resultStore;

 if (sexpr->funcResultSlot == ((void*)0))
 {

  TupleDesc slotDesc;
  MemoryContext oldcontext;

  oldcontext = MemoryContextSwitchTo(sexpr->func.fn_mcxt);





  if (sexpr->funcResultDesc)
   slotDesc = sexpr->funcResultDesc;
  else if (resultDesc)
  {

   slotDesc = CreateTupleDescCopy(resultDesc);
  }
  else
  {
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("function returning setof record called in "
       "context that cannot accept type record")));
   slotDesc = ((void*)0);
  }

  sexpr->funcResultSlot = MakeSingleTupleTableSlot(slotDesc,
               &TTSOpsMinimalTuple);
  MemoryContextSwitchTo(oldcontext);
 }





 if (resultDesc)
 {
  if (sexpr->funcResultDesc)
   tupledesc_match(sexpr->funcResultDesc, resultDesc);






  if (resultDesc->tdrefcount == -1)
   FreeTupleDesc(resultDesc);
 }


 if (!sexpr->shutdown_reg)
 {
  RegisterExprContextCallback(econtext,
         ShutdownSetExpr,
         PointerGetDatum(sexpr));
  sexpr->shutdown_reg = 1;
 }
}

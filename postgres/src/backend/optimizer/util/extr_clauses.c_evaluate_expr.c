
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
typedef int int16 ;
struct TYPE_5__ {int es_query_cxt; } ;
typedef int Oid ;
typedef int Node ;
typedef int MemoryContext ;
typedef int ExprState ;
typedef int Expr ;
typedef TYPE_1__ EState ;
typedef int Datum ;


 TYPE_1__* CreateExecutorState () ;
 int ExecEvalExprSwitchContext (int *,int ,int*) ;
 int * ExecInitExpr (int *,int *) ;
 int FreeExecutorState (TYPE_1__*) ;
 int GetPerTupleExprContext (TYPE_1__*) ;
 int MemoryContextSwitchTo (int ) ;
 int PG_DETOAST_DATUM_COPY (int ) ;
 int PointerGetDatum (int ) ;
 int datumCopy (int ,int,int) ;
 int fix_opfuncids (int *) ;
 int get_typlenbyval (int ,int*,int*) ;
 scalar_t__ makeConst (int ,int ,int ,int,int ,int,int) ;

Expr *
evaluate_expr(Expr *expr, Oid result_type, int32 result_typmod,
     Oid result_collation)
{
 EState *estate;
 ExprState *exprstate;
 MemoryContext oldcontext;
 Datum const_val;
 bool const_is_null;
 int16 resultTypLen;
 bool resultTypByVal;




 estate = CreateExecutorState();


 oldcontext = MemoryContextSwitchTo(estate->es_query_cxt);


 fix_opfuncids((Node *) expr);





 exprstate = ExecInitExpr(expr, ((void*)0));
 const_val = ExecEvalExprSwitchContext(exprstate,
            GetPerTupleExprContext(estate),
            &const_is_null);


 get_typlenbyval(result_type, &resultTypLen, &resultTypByVal);


 MemoryContextSwitchTo(oldcontext);
 if (!const_is_null)
 {
  if (resultTypLen == -1)
   const_val = PointerGetDatum(PG_DETOAST_DATUM_COPY(const_val));
  else
   const_val = datumCopy(const_val, resultTypByVal, resultTypLen);
 }


 FreeExecutorState(estate);




 return (Expr *) makeConst(result_type, result_typmod, result_collation,
         resultTypLen,
         const_val, const_is_null,
         resultTypByVal);
}

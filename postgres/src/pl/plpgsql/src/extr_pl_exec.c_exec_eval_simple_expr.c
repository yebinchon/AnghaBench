
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;


typedef int int32 ;
struct TYPE_25__ {scalar_t__ generation; } ;
struct TYPE_24__ {int * ecxt_param_list_info; } ;
struct TYPE_23__ {int readonly_func; TYPE_2__* paramLI; TYPE_1__* simple_eval_estate; TYPE_5__* eval_econtext; } ;
struct TYPE_22__ {int expr_simple_in_use; scalar_t__ expr_simple_lxid; scalar_t__ expr_simple_generation; scalar_t__ rwparam; int expr_simple_state; int * expr_simple_expr; int expr_simple_typmod; int expr_simple_type; int plan; } ;
struct TYPE_21__ {void* parserSetupArg; } ;
struct TYPE_20__ {int es_query_cxt; } ;
struct TYPE_19__ {scalar_t__ lxid; } ;
typedef TYPE_3__ PLpgSQL_expr ;
typedef TYPE_4__ PLpgSQL_execstate ;
typedef int Oid ;
typedef int MemoryContext ;
typedef scalar_t__ LocalTransactionId ;
typedef TYPE_5__ ExprContext ;
typedef int Datum ;
typedef TYPE_6__ CachedPlan ;


 int Assert (int ) ;
 int CommandCounterIncrement () ;
 int ExecEvalExpr (int ,TYPE_5__*,int*) ;
 int ExecInitExprWithParams (int *,int *) ;
 int GetTransactionSnapshot () ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_17__* MyProc ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 int ReleaseCachedPlan (TYPE_6__*,int) ;
 TYPE_6__* SPI_plan_get_cached_plan (int ) ;
 int exec_check_rw_parameter (TYPE_3__*,scalar_t__) ;
 int exec_save_simple_expr (TYPE_3__*,TYPE_6__*) ;
 int get_eval_mcontext (TYPE_4__*) ;
 int * setup_param_list (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static bool
exec_eval_simple_expr(PLpgSQL_execstate *estate,
       PLpgSQL_expr *expr,
       Datum *result,
       bool *isNull,
       Oid *rettype,
       int32 *rettypmod)
{
 ExprContext *econtext = estate->eval_econtext;
 LocalTransactionId curlxid = MyProc->lxid;
 CachedPlan *cplan;
 void *save_setup_arg;
 MemoryContext oldcontext;




 if (expr->expr_simple_expr == ((void*)0))
  return 0;




 if (expr->expr_simple_in_use && expr->expr_simple_lxid == curlxid)
  return 0;






 oldcontext = MemoryContextSwitchTo(get_eval_mcontext(estate));
 cplan = SPI_plan_get_cached_plan(expr->plan);
 MemoryContextSwitchTo(oldcontext);






 Assert(cplan != ((void*)0));


 if (cplan->generation != expr->expr_simple_generation)
 {
  exec_save_simple_expr(expr, cplan);

  if (expr->rwparam >= 0)
   exec_check_rw_parameter(expr, expr->rwparam);
 }




 *rettype = expr->expr_simple_type;
 *rettypmod = expr->expr_simple_typmod;





 save_setup_arg = estate->paramLI->parserSetupArg;

 econtext->ecxt_param_list_info = setup_param_list(estate, expr);






 if (expr->expr_simple_lxid != curlxid)
 {
  oldcontext = MemoryContextSwitchTo(estate->simple_eval_estate->es_query_cxt);
  expr->expr_simple_state =
   ExecInitExprWithParams(expr->expr_simple_expr,
           econtext->ecxt_param_list_info);
  expr->expr_simple_in_use = 0;
  expr->expr_simple_lxid = curlxid;
  MemoryContextSwitchTo(oldcontext);
 }







 oldcontext = MemoryContextSwitchTo(get_eval_mcontext(estate));
 if (!estate->readonly_func)
 {
  CommandCounterIncrement();
  PushActiveSnapshot(GetTransactionSnapshot());
 }




 expr->expr_simple_in_use = 1;




 *result = ExecEvalExpr(expr->expr_simple_state,
         econtext,
         isNull);


 expr->expr_simple_in_use = 0;

 econtext->ecxt_param_list_info = ((void*)0);

 estate->paramLI->parserSetupArg = save_setup_arg;

 if (!estate->readonly_func)
  PopActiveSnapshot();

 MemoryContextSwitchTo(oldcontext);




 ReleaseCachedPlan(cplan, 1);




 return 1;
}

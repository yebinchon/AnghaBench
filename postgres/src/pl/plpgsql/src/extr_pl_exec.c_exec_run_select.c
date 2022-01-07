
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int eval_processed; int * eval_tuptable; int readonly_func; } ;
struct TYPE_10__ {int query; int * plan; } ;
typedef int * Portal ;
typedef int ParamListInfo ;
typedef TYPE_1__ PLpgSQL_expr ;
typedef TYPE_2__ PLpgSQL_execstate ;


 int Assert (int ) ;
 int CURSOR_OPT_PARALLEL_OK ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int SPI_OK_CURSOR ;
 int SPI_OK_SELECT ;
 int * SPI_cursor_open_with_paramlist (int *,int *,int ,int ) ;
 int SPI_execute_plan_with_paramlist (int *,int ,int ,long) ;
 int SPI_processed ;
 int SPI_result ;
 int SPI_result_code_string (int ) ;
 int * SPI_tuptable ;
 int elog (int ,char*,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int exec_eval_cleanup (TYPE_2__*) ;
 int exec_prepare_plan (TYPE_2__*,TYPE_1__*,int ,int) ;
 int setup_param_list (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int
exec_run_select(PLpgSQL_execstate *estate,
    PLpgSQL_expr *expr, long maxtuples, Portal *portalP)
{
 ParamListInfo paramLI;
 int rc;
 if (expr->plan == ((void*)0))
  exec_prepare_plan(estate, expr,
        portalP == ((void*)0) ? CURSOR_OPT_PARALLEL_OK : 0, 1);




 paramLI = setup_param_list(estate, expr);




 if (portalP != ((void*)0))
 {
  *portalP = SPI_cursor_open_with_paramlist(((void*)0), expr->plan,
              paramLI,
              estate->readonly_func);
  if (*portalP == ((void*)0))
   elog(ERROR, "could not open implicit cursor for query \"%s\": %s",
     expr->query, SPI_result_code_string(SPI_result));
  exec_eval_cleanup(estate);
  return SPI_OK_CURSOR;
 }




 rc = SPI_execute_plan_with_paramlist(expr->plan, paramLI,
           estate->readonly_func, maxtuples);
 if (rc != SPI_OK_SELECT)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("query \"%s\" is not a SELECT", expr->query)));


 Assert(estate->eval_tuptable == ((void*)0));
 estate->eval_tuptable = SPI_tuptable;
 estate->eval_processed = SPI_processed;

 return rc;
}

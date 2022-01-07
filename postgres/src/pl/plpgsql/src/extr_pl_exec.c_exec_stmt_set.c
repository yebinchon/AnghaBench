
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int no_snapshots; } ;
struct TYPE_11__ {int readonly_func; } ;
struct TYPE_10__ {int query; TYPE_8__* plan; } ;
struct TYPE_9__ {TYPE_2__* expr; } ;
typedef TYPE_1__ PLpgSQL_stmt_set ;
typedef TYPE_2__ PLpgSQL_expr ;
typedef TYPE_3__ PLpgSQL_execstate ;


 int ERROR ;
 int PLPGSQL_RC_OK ;
 int SPI_OK_UTILITY ;
 int SPI_execute_plan (TYPE_8__*,int *,int *,int ,int ) ;
 int SPI_result_code_string (int) ;
 int elog (int ,char*,int ,int ) ;
 int exec_prepare_plan (TYPE_3__*,TYPE_2__*,int ,int) ;

__attribute__((used)) static int
exec_stmt_set(PLpgSQL_execstate *estate, PLpgSQL_stmt_set *stmt)
{
 PLpgSQL_expr *expr = stmt->expr;
 int rc;

 if (expr->plan == ((void*)0))
 {
  exec_prepare_plan(estate, expr, 0, 1);
  expr->plan->no_snapshots = 1;
 }

 rc = SPI_execute_plan(expr->plan, ((void*)0), ((void*)0), estate->readonly_func, 0);

 if (rc != SPI_OK_UTILITY)
  elog(ERROR, "SPI_execute_plan failed executing query \"%s\": %s",
    expr->query, SPI_result_code_string(rc));

 return PLPGSQL_RC_OK;
}

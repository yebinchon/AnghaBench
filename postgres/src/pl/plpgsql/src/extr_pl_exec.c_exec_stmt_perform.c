
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ eval_processed; } ;
struct TYPE_8__ {int * expr; } ;
typedef TYPE_1__ PLpgSQL_stmt_perform ;
typedef int PLpgSQL_expr ;
typedef TYPE_2__ PLpgSQL_execstate ;


 int PLPGSQL_RC_OK ;
 int exec_eval_cleanup (TYPE_2__*) ;
 int exec_run_select (TYPE_2__*,int *,int ,int *) ;
 int exec_set_found (TYPE_2__*,int) ;

__attribute__((used)) static int
exec_stmt_perform(PLpgSQL_execstate *estate, PLpgSQL_stmt_perform *stmt)
{
 PLpgSQL_expr *expr = stmt->expr;

 (void) exec_run_select(estate, expr, 0, ((void*)0));
 exec_set_found(estate, (estate->eval_processed != 0));
 exec_eval_cleanup(estate);

 return PLPGSQL_RC_OK;
}

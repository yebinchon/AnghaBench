
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int exitlabel; } ;
struct TYPE_7__ {scalar_t__ is_exit; int label; int * cond; } ;
typedef TYPE_1__ PLpgSQL_stmt_exit ;
typedef TYPE_2__ PLpgSQL_execstate ;


 int PLPGSQL_RC_CONTINUE ;
 int PLPGSQL_RC_EXIT ;
 int PLPGSQL_RC_OK ;
 int exec_eval_boolean (TYPE_2__*,int *,int*) ;
 int exec_eval_cleanup (TYPE_2__*) ;

__attribute__((used)) static int
exec_stmt_exit(PLpgSQL_execstate *estate, PLpgSQL_stmt_exit *stmt)
{



 if (stmt->cond != ((void*)0))
 {
  bool value;
  bool isnull;

  value = exec_eval_boolean(estate, stmt->cond, &isnull);
  exec_eval_cleanup(estate);
  if (isnull || value == 0)
   return PLPGSQL_RC_OK;
 }

 estate->exitlabel = stmt->label;
 if (stmt->is_exit)
  return PLPGSQL_RC_EXIT;
 else
  return PLPGSQL_RC_CONTINUE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* action; int out_param_varno; scalar_t__ nstatements; } ;
struct TYPE_10__ {scalar_t__ cmd_type; } ;
struct TYPE_9__ {scalar_t__ body; scalar_t__ stmtid; int cmd_type; int * exceptions; } ;
struct TYPE_8__ {int retvarno; int * expr; scalar_t__ stmtid; scalar_t__ cmd_type; } ;
typedef TYPE_1__ PLpgSQL_stmt_return ;
typedef TYPE_2__ PLpgSQL_stmt_block ;
typedef TYPE_3__ PLpgSQL_stmt ;
typedef TYPE_4__ PLpgSQL_function ;


 scalar_t__ NIL ;
 int PLPGSQL_STMT_BLOCK ;
 scalar_t__ PLPGSQL_STMT_RETURN ;
 scalar_t__ lappend (scalar_t__,TYPE_1__*) ;
 scalar_t__ list_make1 (TYPE_2__*) ;
 scalar_t__ llast (scalar_t__) ;
 void* palloc0 (int) ;

__attribute__((used)) static void
add_dummy_return(PLpgSQL_function *function)
{





 if (function->action->exceptions != ((void*)0))
 {
  PLpgSQL_stmt_block *new;

  new = palloc0(sizeof(PLpgSQL_stmt_block));
  new->cmd_type = PLPGSQL_STMT_BLOCK;
  new->stmtid = ++function->nstatements;
  new->body = list_make1(function->action);

  function->action = new;
 }
 if (function->action->body == NIL ||
  ((PLpgSQL_stmt *) llast(function->action->body))->cmd_type != PLPGSQL_STMT_RETURN)
 {
  PLpgSQL_stmt_return *new;

  new = palloc0(sizeof(PLpgSQL_stmt_return));
  new->cmd_type = PLPGSQL_STMT_RETURN;
  new->stmtid = ++function->nstatements;
  new->expr = ((void*)0);
  new->retvarno = function->out_param_varno;

  function->action->body = lappend(function->action->body, new);
 }
}

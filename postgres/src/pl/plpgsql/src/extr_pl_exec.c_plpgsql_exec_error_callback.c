
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lineno; } ;
struct TYPE_5__ {TYPE_1__* func; TYPE_3__* err_stmt; int * err_text; } ;
struct TYPE_4__ {int fn_signature; } ;
typedef TYPE_2__ PLpgSQL_execstate ;


 int _ (int *) ;
 int errcontext (char*,int ,...) ;
 int plpgsql_stmt_typename (TYPE_3__*) ;

__attribute__((used)) static void
plpgsql_exec_error_callback(void *arg)
{
 PLpgSQL_execstate *estate = (PLpgSQL_execstate *) arg;

 if (estate->err_text != ((void*)0))
 {
  if (estate->err_stmt != ((void*)0))
  {




   errcontext("PL/pgSQL function %s line %d %s",
        estate->func->fn_signature,
        estate->err_stmt->lineno,
        _(estate->err_text));
  }
  else
  {




   errcontext("PL/pgSQL function %s %s",
        estate->func->fn_signature,
        _(estate->err_text));
  }
 }
 else if (estate->err_stmt != ((void*)0))
 {

  errcontext("PL/pgSQL function %s line %d at %s",
       estate->func->fn_signature,
       estate->err_stmt->lineno,
       plpgsql_stmt_typename(estate->err_stmt));
 }
 else
  errcontext("PL/pgSQL function %s",
       estate->func->fn_signature);
}

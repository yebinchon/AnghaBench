
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int location; int fields; } ;
struct TYPE_13__ {TYPE_1__* func; } ;
struct TYPE_12__ {scalar_t__ p_ref_hook_state; } ;
struct TYPE_11__ {scalar_t__ resolve_option; } ;
typedef TYPE_2__ ParseState ;
typedef TYPE_3__ PLpgSQL_expr ;
typedef int Node ;
typedef TYPE_4__ ColumnRef ;


 int ERRCODE_AMBIGUOUS_COLUMN ;
 int ERROR ;
 int NameListToString (int ) ;
 scalar_t__ PLPGSQL_RESOLVE_COLUMN ;
 scalar_t__ PLPGSQL_RESOLVE_VARIABLE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,int ) ;
 int parser_errposition (TYPE_2__*,int ) ;
 int * resolve_column_ref (TYPE_2__*,TYPE_3__*,TYPE_4__*,int ) ;

__attribute__((used)) static Node *
plpgsql_post_column_ref(ParseState *pstate, ColumnRef *cref, Node *var)
{
 PLpgSQL_expr *expr = (PLpgSQL_expr *) pstate->p_ref_hook_state;
 Node *myvar;

 if (expr->func->resolve_option == PLPGSQL_RESOLVE_VARIABLE)
  return ((void*)0);

 if (expr->func->resolve_option == PLPGSQL_RESOLVE_COLUMN && var != ((void*)0))
  return ((void*)0);
 myvar = resolve_column_ref(pstate, expr, cref, (var == ((void*)0)));

 if (myvar != ((void*)0) && var != ((void*)0))
 {




  ereport(ERROR,
    (errcode(ERRCODE_AMBIGUOUS_COLUMN),
     errmsg("column reference \"%s\" is ambiguous",
      NameListToString(cref->fields)),
     errdetail("It could refer to either a PL/pgSQL variable or a table column."),
     parser_errposition(pstate, cref->location)));
 }

 return myvar;
}

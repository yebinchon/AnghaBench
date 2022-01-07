
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* func; } ;
struct TYPE_8__ {scalar_t__ p_ref_hook_state; } ;
struct TYPE_7__ {scalar_t__ resolve_option; } ;
typedef TYPE_2__ ParseState ;
typedef TYPE_3__ PLpgSQL_expr ;
typedef int Node ;
typedef int ColumnRef ;


 scalar_t__ PLPGSQL_RESOLVE_VARIABLE ;
 int * resolve_column_ref (TYPE_2__*,TYPE_3__*,int *,int) ;

__attribute__((used)) static Node *
plpgsql_pre_column_ref(ParseState *pstate, ColumnRef *cref)
{
 PLpgSQL_expr *expr = (PLpgSQL_expr *) pstate->p_ref_hook_state;

 if (expr->func->resolve_option == PLPGSQL_RESOLVE_VARIABLE)
  return resolve_column_ref(pstate, expr, cref, 0);
 else
  return ((void*)0);
}

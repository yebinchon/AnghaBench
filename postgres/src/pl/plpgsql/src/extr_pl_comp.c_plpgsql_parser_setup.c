
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ParseState {void* p_ref_hook_state; int p_paramref_hook; int p_post_columnref_hook; int p_pre_columnref_hook; } ;
typedef int PLpgSQL_expr ;


 int plpgsql_param_ref ;
 int plpgsql_post_column_ref ;
 int plpgsql_pre_column_ref ;

void
plpgsql_parser_setup(struct ParseState *pstate, PLpgSQL_expr *expr)
{
 pstate->p_pre_columnref_hook = plpgsql_pre_column_ref;
 pstate->p_post_columnref_hook = plpgsql_post_column_ref;
 pstate->p_paramref_hook = plpgsql_param_ref;

 pstate->p_ref_hook_state = (void *) expr;
}

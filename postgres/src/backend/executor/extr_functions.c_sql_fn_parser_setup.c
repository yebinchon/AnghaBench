
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ParseState {void* p_ref_hook_state; int p_paramref_hook; int p_post_columnref_hook; int * p_pre_columnref_hook; } ;
typedef scalar_t__ SQLFunctionParseInfoPtr ;


 int sql_fn_param_ref ;
 int sql_fn_post_column_ref ;

void
sql_fn_parser_setup(struct ParseState *pstate, SQLFunctionParseInfoPtr pinfo)
{
 pstate->p_pre_columnref_hook = ((void*)0);
 pstate->p_post_columnref_hook = sql_fn_post_column_ref;
 pstate->p_paramref_hook = sql_fn_param_ref;

 pstate->p_ref_hook_state = (void *) pinfo;
}

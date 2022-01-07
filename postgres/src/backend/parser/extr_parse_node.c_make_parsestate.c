
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_next_resno; int p_resolve_unknowns; int p_queryEnv; int p_ref_hook_state; int p_coerce_param_hook; int p_paramref_hook; int p_post_columnref_hook; int p_pre_columnref_hook; int p_sourcetext; struct TYPE_5__* parentParseState; } ;
typedef TYPE_1__ ParseState ;


 TYPE_1__* palloc0 (int) ;

ParseState *
make_parsestate(ParseState *parentParseState)
{
 ParseState *pstate;

 pstate = palloc0(sizeof(ParseState));

 pstate->parentParseState = parentParseState;


 pstate->p_next_resno = 1;
 pstate->p_resolve_unknowns = 1;

 if (parentParseState)
 {
  pstate->p_sourcetext = parentParseState->p_sourcetext;

  pstate->p_pre_columnref_hook = parentParseState->p_pre_columnref_hook;
  pstate->p_post_columnref_hook = parentParseState->p_post_columnref_hook;
  pstate->p_paramref_hook = parentParseState->p_paramref_hook;
  pstate->p_coerce_param_hook = parentParseState->p_coerce_param_hook;
  pstate->p_ref_hook_state = parentParseState->p_ref_hook_state;

  pstate->p_queryEnv = parentParseState->p_queryEnv;
 }

 return pstate;
}

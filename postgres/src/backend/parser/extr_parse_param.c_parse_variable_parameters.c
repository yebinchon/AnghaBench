
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* numParams; int ** paramTypes; } ;
typedef TYPE_1__ VarParamState ;
struct TYPE_6__ {int p_coerce_param_hook; int p_paramref_hook; void* p_ref_hook_state; } ;
typedef TYPE_2__ ParseState ;
typedef int Oid ;


 TYPE_1__* palloc (int) ;
 int variable_coerce_param_hook ;
 int variable_paramref_hook ;

void
parse_variable_parameters(ParseState *pstate,
        Oid **paramTypes, int *numParams)
{
 VarParamState *parstate = palloc(sizeof(VarParamState));

 parstate->paramTypes = paramTypes;
 parstate->numParams = numParams;
 pstate->p_ref_hook_state = (void *) parstate;
 pstate->p_paramref_hook = variable_paramref_hook;
 pstate->p_coerce_param_hook = variable_coerce_param_hook;
}

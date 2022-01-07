
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numParams; int * paramTypes; } ;
struct TYPE_5__ {int p_paramref_hook; void* p_ref_hook_state; } ;
typedef TYPE_1__ ParseState ;
typedef int Oid ;
typedef TYPE_2__ FixedParamState ;


 int fixed_paramref_hook ;
 TYPE_2__* palloc (int) ;

void
parse_fixed_parameters(ParseState *pstate,
        Oid *paramTypes, int numParams)
{
 FixedParamState *parstate = palloc(sizeof(FixedParamState));

 parstate->paramTypes = paramTypes;
 parstate->numParams = numParams;
 pstate->p_ref_hook_state = (void *) parstate;
 pstate->p_paramref_hook = fixed_paramref_hook;

}

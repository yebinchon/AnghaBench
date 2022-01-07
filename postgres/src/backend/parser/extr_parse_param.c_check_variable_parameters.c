
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* numParams; } ;
typedef TYPE_1__ VarParamState ;
struct TYPE_5__ {scalar_t__ p_ref_hook_state; } ;
typedef int Query ;
typedef TYPE_2__ ParseState ;


 int check_parameter_resolution_walker ;
 int query_tree_walker (int *,int ,void*,int ) ;

void
check_variable_parameters(ParseState *pstate, Query *query)
{
 VarParamState *parstate = (VarParamState *) pstate->p_ref_hook_state;


 if (*parstate->numParams > 0)
  (void) query_tree_walker(query,
         check_parameter_resolution_walker,
         (void *) pstate, 0);
}

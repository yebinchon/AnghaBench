
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int walk_parameter_dep_func ;
struct TYPE_2__ {int param_eval; int type; } ;
struct d3dx_state {scalar_t__ type; TYPE_1__ parameter; TYPE_1__* referenced_param; } ;
typedef int BOOL ;


 scalar_t__ ST_ARRAY_SELECTOR ;
 scalar_t__ ST_CONSTANT ;
 scalar_t__ ST_PARAMETER ;
 int TRUE ;
 scalar_t__ is_param_type_sampler (int ) ;
 int walk_param_eval_dep (int ,int ,void*) ;
 scalar_t__ walk_parameter_dep (TYPE_1__*,int ,void*) ;

__attribute__((used)) static BOOL walk_state_dep(struct d3dx_state *state, walk_parameter_dep_func param_func,
        void *data)
{
    if (state->type == ST_CONSTANT && is_param_type_sampler(state->parameter.type))
    {
        if (walk_parameter_dep(&state->parameter, param_func, data))
            return TRUE;
    }
    else if (state->type == ST_ARRAY_SELECTOR || state->type == ST_PARAMETER)
    {
        if (walk_parameter_dep(state->referenced_param, param_func, data))
            return TRUE;
    }
    return walk_param_eval_dep(state->parameter.param_eval, param_func, data);
}

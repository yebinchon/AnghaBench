
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int walk_parameter_dep_func ;
struct d3dx_parameter {int dummy; } ;
struct TYPE_4__ {unsigned int input_count; struct d3dx_parameter** inputs_param; } ;
struct TYPE_5__ {TYPE_1__ inputs; } ;
struct TYPE_6__ {unsigned int input_count; struct d3dx_parameter** inputs_param; } ;
struct d3dx_param_eval {TYPE_2__ pres; TYPE_3__ shader_inputs; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ walk_parameter_dep (struct d3dx_parameter*,int ,void*) ;

__attribute__((used)) static BOOL walk_param_eval_dep(struct d3dx_param_eval *param_eval, walk_parameter_dep_func param_func,
        void *data)
{
    struct d3dx_parameter **params;
    unsigned int i, param_count;

    if (!param_eval)
        return FALSE;

    params = param_eval->shader_inputs.inputs_param;
    param_count = param_eval->shader_inputs.input_count;
    for (i = 0; i < param_count; ++i)
    {
        if (walk_parameter_dep(params[i], param_func, data))
            return TRUE;
    }

    params = param_eval->pres.inputs.inputs_param;
    param_count = param_eval->pres.inputs.input_count;
    for (i = 0; i < param_count; ++i)
    {
        if (walk_parameter_dep(params[i], param_func, data))
            return TRUE;
    }
    return FALSE;
}

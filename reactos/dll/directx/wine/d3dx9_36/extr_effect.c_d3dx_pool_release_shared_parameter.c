
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct d3dx_top_level_parameter {TYPE_2__* shared_data; TYPE_1__ param; } ;
struct TYPE_4__ {unsigned int count; scalar_t__ size; struct d3dx_top_level_parameter** parameters; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct d3dx_top_level_parameter**) ;
 int PARAMETER_FLAG_SHARED ;
 int TRACE (char*,struct d3dx_top_level_parameter*,TYPE_2__*,unsigned int) ;
 int memmove (struct d3dx_top_level_parameter**,struct d3dx_top_level_parameter**,int) ;
 int param_zero_data_func ;
 int walk_parameter_tree (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void d3dx_pool_release_shared_parameter(struct d3dx_top_level_parameter *param)
{
    unsigned int new_count;

    if (!(param->param.flags & PARAMETER_FLAG_SHARED) || !param->shared_data)
        return;
    new_count = --param->shared_data->count;

    TRACE("param %p, param->shared_data %p, new_count %d.\n", param, param->shared_data, new_count);

    if (new_count)
    {
        unsigned int i;

        for (i = 0; i < new_count; ++i)
        {
            if (param->shared_data->parameters[i] == param)
            {
                memmove(&param->shared_data->parameters[i],
                        &param->shared_data->parameters[i + 1],
                        sizeof(param->shared_data->parameters[i]) * (new_count - i));
                break;
            }
        }
        walk_parameter_tree(&param->param, param_zero_data_func, ((void*)0));
    }
    else
    {
        HeapFree(GetProcessHeap(), 0, param->shared_data->parameters);

        param->shared_data->size = 0;
        param->shared_data = ((void*)0);
    }
}

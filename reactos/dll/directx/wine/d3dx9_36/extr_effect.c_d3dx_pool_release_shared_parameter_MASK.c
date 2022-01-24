#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; } ;
struct d3dx_top_level_parameter {TYPE_2__* shared_data; TYPE_1__ param; } ;
struct TYPE_4__ {unsigned int count; scalar_t__ size; struct d3dx_top_level_parameter** parameters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct d3dx_top_level_parameter**) ; 
 int PARAMETER_FLAG_SHARED ; 
 int /*<<< orphan*/  FUNC2 (char*,struct d3dx_top_level_parameter*,TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct d3dx_top_level_parameter**,struct d3dx_top_level_parameter**,int) ; 
 int /*<<< orphan*/  param_zero_data_func ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct d3dx_top_level_parameter *param)
{
    unsigned int new_count;

    if (!(param->param.flags & PARAMETER_FLAG_SHARED) || !param->shared_data)
        return;
    new_count = --param->shared_data->count;

    FUNC2("param %p, param->shared_data %p, new_count %d.\n", param, param->shared_data, new_count);

    if (new_count)
    {
        unsigned int i;

        for (i = 0; i < new_count; ++i)
        {
            if (param->shared_data->parameters[i] == param)
            {
                FUNC3(&param->shared_data->parameters[i],
                        &param->shared_data->parameters[i + 1],
                        sizeof(param->shared_data->parameters[i]) * (new_count - i));
                break;
            }
        }
        FUNC4(&param->param, param_zero_data_func, NULL);
    }
    else
    {
        FUNC1(FUNC0(), 0, param->shared_data->parameters);
        /* Zeroing table size is required as the entry in pool parameters table can be reused. */
        param->shared_data->size = 0;
        param->shared_data = NULL;
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  walk_parameter_dep_func ;
struct TYPE_2__ {int /*<<< orphan*/  param_eval; int /*<<< orphan*/  type; } ;
struct d3dx_state {scalar_t__ type; TYPE_1__ parameter; TYPE_1__* referenced_param; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ST_ARRAY_SELECTOR ; 
 scalar_t__ ST_CONSTANT ; 
 scalar_t__ ST_PARAMETER ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static BOOL FUNC3(struct d3dx_state *state, walk_parameter_dep_func param_func,
        void *data)
{
    if (state->type == ST_CONSTANT && FUNC0(state->parameter.type))
    {
        if (FUNC2(&state->parameter, param_func, data))
            return TRUE;
    }
    else if (state->type == ST_ARRAY_SELECTOR || state->type == ST_PARAMETER)
    {
        if (FUNC2(state->referenced_param, param_func, data))
            return TRUE;
    }
    return FUNC1(state->parameter.param_eval, param_func, data);
}
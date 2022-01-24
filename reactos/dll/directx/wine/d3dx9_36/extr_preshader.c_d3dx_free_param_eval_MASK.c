#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct d3dx_param_eval {int /*<<< orphan*/  shader_inputs; int /*<<< orphan*/  pres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct d3dx_param_eval*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct d3dx_param_eval*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct d3dx_param_eval *peval)
{
    FUNC2("peval %p.\n", peval);

    if (!peval)
        return;

    FUNC4(&peval->pres);
    FUNC3(&peval->shader_inputs);
    FUNC1(FUNC0(), 0, peval);
}
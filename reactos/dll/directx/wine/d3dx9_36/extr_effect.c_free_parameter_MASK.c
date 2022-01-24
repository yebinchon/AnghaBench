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
struct d3dx_parameter {unsigned int element_count; unsigned int member_count; struct d3dx_parameter* semantic; struct d3dx_parameter* name; struct d3dx_parameter* members; scalar_t__ param_eval; int /*<<< orphan*/  type; } ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct d3dx_parameter*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct d3dx_parameter*,struct d3dx_parameter*,int /*<<< orphan*/ ,int,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct d3dx_parameter*,int) ; 

__attribute__((used)) static void FUNC6(struct d3dx_parameter *param, BOOL element, BOOL child)
{
    unsigned int i;

    FUNC2("Free parameter %p, name %s, type %s, element %#x, child %#x.\n", param, param->name,
            FUNC4(param->type), element, child);

    if (param->param_eval)
        FUNC3(param->param_eval);

    if (param->members)
    {
        unsigned int count = param->element_count ? param->element_count : param->member_count;

        for (i = 0; i < count; ++i)
            FUNC6(&param->members[i], param->element_count != 0, TRUE);
        FUNC1(FUNC0(), 0, param->members);
    }

    FUNC5(param, child);

    /* only the parent has to release name and semantic */
    if (!element)
    {
        FUNC1(FUNC0(), 0, param->name);
        FUNC1(FUNC0(), 0, param->semantic);
    }
}
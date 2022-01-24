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
struct d3dx9_base_effect {unsigned int parameter_count; unsigned int technique_count; unsigned int object_count; int /*<<< orphan*/ * objects; int /*<<< orphan*/ * techniques; int /*<<< orphan*/ * parameters; int /*<<< orphan*/  full_name_tmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct d3dx9_base_effect*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct d3dx9_base_effect *base)
{
    unsigned int i;

    FUNC2("base %p.\n", base);

    FUNC6(base->full_name_tmp);

    if (base->parameters)
    {
        for (i = 0; i < base->parameter_count; ++i)
            FUNC5(&base->parameters[i]);
        FUNC1(FUNC0(), 0, base->parameters);
        base->parameters = NULL;
    }

    if (base->techniques)
    {
        for (i = 0; i < base->technique_count; ++i)
            FUNC4(&base->techniques[i]);
        FUNC1(FUNC0(), 0, base->techniques);
        base->techniques = NULL;
    }

    if (base->objects)
    {
        for (i = 0; i < base->object_count; ++i)
        {
            FUNC3(&base->objects[i]);
        }
        FUNC1(FUNC0(), 0, base->objects);
        base->objects = NULL;
    }
}
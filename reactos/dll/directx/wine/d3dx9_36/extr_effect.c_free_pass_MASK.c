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
struct d3dx_pass {unsigned int annotation_count; unsigned int state_count; int /*<<< orphan*/ * name; int /*<<< orphan*/ * states; int /*<<< orphan*/ * annotations; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct d3dx_pass*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct d3dx_pass *pass)
{
    unsigned int i;

    FUNC2("Free pass %p\n", pass);

    if (!pass)
        return;

    if (pass->annotations)
    {
        for (i = 0; i < pass->annotation_count; ++i)
            FUNC3(&pass->annotations[i], FALSE, FALSE);
        FUNC1(FUNC0(), 0, pass->annotations);
        pass->annotations = NULL;
    }

    if (pass->states)
    {
        for (i = 0; i < pass->state_count; ++i)
            FUNC4(&pass->states[i]);
        FUNC1(FUNC0(), 0, pass->states);
        pass->states = NULL;
    }

    FUNC1(FUNC0(), 0, pass->name);
    pass->name = NULL;
}
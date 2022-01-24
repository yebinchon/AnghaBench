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
struct d3dx_technique {unsigned int annotation_count; unsigned int pass_count; int /*<<< orphan*/ * name; int /*<<< orphan*/ * passes; int /*<<< orphan*/ * annotations; int /*<<< orphan*/ * saved_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct d3dx_technique*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct d3dx_technique *technique)
{
    unsigned int i;

    FUNC3("Free technique %p\n", technique);

    if (!technique)
        return;

    if (technique->saved_state)
    {
        FUNC2(technique->saved_state);
        technique->saved_state = NULL;
    }

    if (technique->annotations)
    {
        for (i = 0; i < technique->annotation_count; ++i)
            FUNC4(&technique->annotations[i], FALSE, FALSE);
        FUNC1(FUNC0(), 0, technique->annotations);
        technique->annotations = NULL;
    }

    if (technique->passes)
    {
        for (i = 0; i < technique->pass_count; ++i)
            FUNC5(&technique->passes[i]);
        FUNC1(FUNC0(), 0, technique->passes);
        technique->passes = NULL;
    }

    FUNC1(FUNC0(), 0, technique->name);
    technique->name = NULL;
}
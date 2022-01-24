#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nallsteps; TYPE_1__** allsteps; scalar_t__ permutations; } ;
typedef  TYPE_2__ TestSpec ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(TestSpec *testspec)
{
	int			i;

	if (testspec->permutations)
		FUNC2(testspec);
	else
		FUNC1(testspec);

	/*
	 * Verify that all steps have been used, complaining about anything
	 * defined but not used.
	 */
	for (i = 0; i < testspec->nallsteps; i++)
	{
		if (!testspec->allsteps[i]->used)
			FUNC0(stderr, "unused step name: %s\n",
					testspec->allsteps[i]->name);
	}
}
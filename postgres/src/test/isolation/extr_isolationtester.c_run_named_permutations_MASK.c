#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int npermutations; int /*<<< orphan*/  nallsteps; int /*<<< orphan*/  allsteps; TYPE_2__** permutations; } ;
typedef  TYPE_1__ TestSpec ;
struct TYPE_6__ {int nsteps; char** stepnames; } ;
typedef  int /*<<< orphan*/  Step ;
typedef  TYPE_2__ Permutation ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  step_bsearch_cmp ; 

__attribute__((used)) static void
FUNC6(TestSpec *testspec)
{
	int			i,
				j;

	for (i = 0; i < testspec->npermutations; i++)
	{
		Permutation *p = testspec->permutations[i];
		Step	  **steps;

		steps = FUNC4(p->nsteps * sizeof(Step *));

		/* Find all the named steps using the lookup table */
		for (j = 0; j < p->nsteps; j++)
		{
			Step	  **this = (Step **) FUNC0(p->stepnames[j],
												 testspec->allsteps,
												 testspec->nallsteps,
												 sizeof(Step *),
												 &step_bsearch_cmp);

			if (this == NULL)
			{
				FUNC2(stderr, "undefined step \"%s\" specified in permutation\n",
						p->stepnames[j]);
				FUNC1(1);
			}
			steps[j] = *this;
		}

		/* And run them */
		FUNC5(testspec, p->nsteps, steps);

		FUNC3(steps);
	}
}
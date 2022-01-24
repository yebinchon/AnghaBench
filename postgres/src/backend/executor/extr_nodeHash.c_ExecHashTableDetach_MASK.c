#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nbatch; TYPE_2__* parallel_state; int /*<<< orphan*/  area; TYPE_1__* batches; } ;
struct TYPE_6__ {int /*<<< orphan*/  batches; int /*<<< orphan*/  build_barrier; } ;
struct TYPE_5__ {int /*<<< orphan*/  outer_tuples; int /*<<< orphan*/  inner_tuples; } ;
typedef  TYPE_2__ ParallelHashJoinState ;
typedef  TYPE_3__* HashJoinTable ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidDsaPointer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(HashJoinTable hashtable)
{
	if (hashtable->parallel_state)
	{
		ParallelHashJoinState *pstate = hashtable->parallel_state;
		int			i;

		/* Make sure any temporary files are closed. */
		if (hashtable->batches)
		{
			for (i = 0; i < hashtable->nbatch; ++i)
			{
				FUNC4(hashtable->batches[i].inner_tuples);
				FUNC4(hashtable->batches[i].outer_tuples);
				FUNC3(hashtable->batches[i].inner_tuples);
				FUNC3(hashtable->batches[i].outer_tuples);
			}
		}

		/* If we're last to detach, clean up shared memory. */
		if (FUNC0(&pstate->build_barrier))
		{
			if (FUNC1(pstate->batches))
			{
				FUNC2(hashtable->area, pstate->batches);
				pstate->batches = InvalidDsaPointer;
			}
		}

		hashtable->parallel_state = NULL;
	}
}
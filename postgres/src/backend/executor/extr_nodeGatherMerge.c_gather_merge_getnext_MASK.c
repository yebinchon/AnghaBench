#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_6__ {int /*<<< orphan*/ ** gm_slots; int /*<<< orphan*/  gm_heap; int /*<<< orphan*/  gm_initialized; } ;
typedef  TYPE_1__ GatherMergeState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int,int) ; 

__attribute__((used)) static TupleTableSlot *
FUNC9(GatherMergeState *gm_state)
{
	int			i;

	if (!gm_state->gm_initialized)
	{
		/*
		 * First time through: pull the first tuple from each participant, and
		 * set up the heap.
		 */
		FUNC7(gm_state);
	}
	else
	{
		/*
		 * Otherwise, pull the next tuple from whichever participant we
		 * returned from last time, and reinsert that participant's index into
		 * the heap, because it might now compare differently against the
		 * other elements of the heap.
		 */
		i = FUNC0(FUNC3(gm_state->gm_heap));

		if (FUNC8(gm_state, i, false))
			FUNC5(gm_state->gm_heap, FUNC1(i));
		else
		{
			/* reader exhausted, remove it from heap */
			(void) FUNC4(gm_state->gm_heap);
		}
	}

	if (FUNC2(gm_state->gm_heap))
	{
		/* All the queues are exhausted, and so is the heap */
		FUNC6(gm_state);
		return NULL;
	}
	else
	{
		/* Return next tuple from whichever participant has the leading one */
		i = FUNC0(FUNC3(gm_state->gm_heap));
		return gm_state->gm_slots[i];
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int memtupcount; scalar_t__ status; int bounded; int bound; int /*<<< orphan*/ * memtuples; } ;
typedef  TYPE_1__ Tuplesortstate ;
typedef  int /*<<< orphan*/  SortTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ TSS_BOUNDED ; 
 scalar_t__ TSS_INITIAL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(Tuplesortstate *state)
{
	int			tupcount = state->memtupcount;
	int			i;

	FUNC0(state->status == TSS_INITIAL);
	FUNC0(state->bounded);
	FUNC0(tupcount >= state->bound);
	FUNC0(FUNC3(state));

	/* Reverse sort direction so largest entry will be at root */
	FUNC5(state);

	state->memtupcount = 0;		/* make the heap empty */
	for (i = 0; i < tupcount; i++)
	{
		if (state->memtupcount < state->bound)
		{
			/* Insert next tuple into heap */
			/* Must copy source tuple to avoid possible overwrite */
			SortTuple	stup = state->memtuples[i];

			FUNC6(state, &stup);
		}
		else
		{
			/*
			 * The heap is full.  Replace the largest entry with the new
			 * tuple, or just discard it, if it's larger than anything already
			 * in the heap.
			 */
			if (FUNC2(state, &state->memtuples[i], &state->memtuples[0]) <= 0)
			{
				FUNC4(state, &state->memtuples[i]);
				FUNC1();
			}
			else
				FUNC7(state, &state->memtuples[i]);
		}
	}

	FUNC0(state->memtupcount == state->bound);
	state->status = TSS_BOUNDED;
}
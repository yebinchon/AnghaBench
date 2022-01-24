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
struct TYPE_6__ {int memtupcount; scalar_t__ status; int bounded; int bound; int boundUsed; int /*<<< orphan*/ * memtuples; } ;
typedef  TYPE_1__ Tuplesortstate ;
typedef  int /*<<< orphan*/  SortTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ TSS_BOUNDED ; 
 scalar_t__ TSS_SORTEDINMEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(Tuplesortstate *state)
{
	int			tupcount = state->memtupcount;

	FUNC0(state->status == TSS_BOUNDED);
	FUNC0(state->bounded);
	FUNC0(tupcount == state->bound);
	FUNC0(FUNC1(state));

	/*
	 * We can unheapify in place because each delete-top call will remove the
	 * largest entry, which we can promptly store in the newly freed slot at
	 * the end.  Once we're down to a single-entry heap, we're done.
	 */
	while (state->memtupcount > 1)
	{
		SortTuple	stup = state->memtuples[0];

		/* this sifts-up the next-largest entry and decreases memtupcount */
		FUNC3(state);
		state->memtuples[state->memtupcount] = stup;
	}
	state->memtupcount = tupcount;

	/*
	 * Reverse sort direction back to the original state.  This is not
	 * actually necessary but seems like a good idea for tidiness.
	 */
	FUNC2(state);

	state->status = TSS_SORTEDINMEM;
	state->boundUsed = true;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
struct TYPE_5__ {int status; scalar_t__ memtupcount; scalar_t__ current; int eof_reached; scalar_t__ bound; int /*<<< orphan*/  sortcontext; int /*<<< orphan*/  bounded; } ;
typedef  TYPE_1__ Tuplesortstate ;
typedef  int /*<<< orphan*/  SortTuple ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  TSS_FINALMERGE 130 
#define  TSS_SORTEDINMEM 129 
#define  TSS_SORTEDONTAPE 128 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 

bool
FUNC6(Tuplesortstate *state, int64 ntuples, bool forward)
{
	MemoryContext oldcontext;

	/*
	 * We don't actually support backwards skip yet, because no callers need
	 * it.  The API is designed to allow for that later, though.
	 */
	FUNC0(forward);
	FUNC0(ntuples >= 0);
	FUNC0(!FUNC3(state));

	switch (state->status)
	{
		case TSS_SORTEDINMEM:
			if (state->memtupcount - state->current >= ntuples)
			{
				state->current += ntuples;
				return true;
			}
			state->current = state->memtupcount;
			state->eof_reached = true;

			/*
			 * Complain if caller tries to retrieve more tuples than
			 * originally asked for in a bounded sort.  This is because
			 * returning EOF here might be the wrong thing.
			 */
			if (state->bounded && state->current >= state->bound)
				FUNC4(ERROR, "retrieved too many tuples in a bounded sort");

			return false;

		case TSS_SORTEDONTAPE:
		case TSS_FINALMERGE:

			/*
			 * We could probably optimize these cases better, but for now it's
			 * not worth the trouble.
			 */
			oldcontext = FUNC2(state->sortcontext);
			while (ntuples-- > 0)
			{
				SortTuple	stup;

				if (!FUNC5(state, forward, &stup))
				{
					FUNC2(oldcontext);
					return false;
				}
				FUNC1();
			}
			FUNC2(oldcontext);
			return true;

		default:
			FUNC4(ERROR, "invalid tuplesort state");
			return false;		/* keep compiler quiet */
	}
}
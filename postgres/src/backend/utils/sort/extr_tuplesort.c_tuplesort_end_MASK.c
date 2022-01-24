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
struct TYPE_6__ {int allowedMem; int availMem; int /*<<< orphan*/  sortcontext; int /*<<< orphan*/ * estate; int /*<<< orphan*/ * tapeset; int /*<<< orphan*/  ru_start; int /*<<< orphan*/  worker; } ;
typedef  TYPE_1__ Tuplesortstate ;
struct TYPE_7__ {int /*<<< orphan*/  ecxt_scantuple; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ ExprContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ trace_sort ; 

void
FUNC11(Tuplesortstate *state)
{
	/* context swap probably not needed, but let's be safe */
	MemoryContext oldcontext = FUNC6(state->sortcontext);

#ifdef TRACE_SORT
	long		spaceUsed;

	if (state->tapeset)
		spaceUsed = LogicalTapeSetBlocks(state->tapeset);
	else
		spaceUsed = (state->allowedMem - state->availMem + 1023) / 1024;
#endif

	/*
	 * Delete temporary "tape" files, if any.
	 *
	 * Note: want to include this in reported total cost of sort, hence need
	 * for two #ifdef TRACE_SORT sections.
	 */
	if (state->tapeset)
		FUNC4(state->tapeset);

#ifdef TRACE_SORT
	if (trace_sort)
	{
		if (state->tapeset)
			elog(LOG, "%s of worker %d ended, %ld disk blocks used: %s",
				 SERIAL(state) ? "external sort" : "parallel external sort",
				 state->worker, spaceUsed, pg_rusage_show(&state->ru_start));
		else
			elog(LOG, "%s of worker %d ended, %ld KB used: %s",
				 SERIAL(state) ? "internal sort" : "unperformed parallel sort",
				 state->worker, spaceUsed, pg_rusage_show(&state->ru_start));
	}

	TRACE_POSTGRESQL_SORT_DONE(state->tapeset != NULL, spaceUsed);
#else

	/*
	 * If you disabled TRACE_SORT, you can still probe sort__done, but you
	 * ain't getting space-used stats.
	 */
	FUNC8(state->tapeset != NULL, 0L);
#endif

	/* Free any execution state created for CLUSTER case */
	if (state->estate != NULL)
	{
		ExprContext *econtext = FUNC2(state->estate);

		FUNC0(econtext->ecxt_scantuple);
		FUNC1(state->estate);
	}

	FUNC6(oldcontext);

	/*
	 * Free the per-sort memory context, thereby releasing all working memory,
	 * including the Tuplesortstate struct itself.
	 */
	FUNC5(state->sortcontext);
}
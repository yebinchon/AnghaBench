#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_15__ {int* tp_tapenum; size_t tapeRange; scalar_t__ memtupcount; int /*<<< orphan*/  ru_start; int /*<<< orphan*/  activeTapes; int /*<<< orphan*/  worker; int /*<<< orphan*/ * tp_runs; TYPE_12__* memtuples; } ;
typedef  TYPE_1__ Tuplesortstate ;
struct TYPE_16__ {int srctape; } ;
struct TYPE_14__ {int srctape; scalar_t__ tuple; } ;
typedef  TYPE_2__ SortTuple ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ trace_sort ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(Tuplesortstate *state)
{
	int			destTape = state->tp_tapenum[state->tapeRange];
	int			srcTape;

	/*
	 * Start the merge by loading one tuple from each active source tape into
	 * the heap.  We can also decrease the input run/dummy run counts.
	 */
	FUNC2(state);

	/*
	 * Execute merge by repeatedly extracting lowest tuple in heap, writing it
	 * out, and replacing it with next tuple from same tape (if there is
	 * another one).
	 */
	while (state->memtupcount > 0)
	{
		SortTuple	stup;

		/* write the tuple to destTape */
		srcTape = state->memtuples[0].srctape;
		FUNC1(state, destTape, &state->memtuples[0]);

		/* recycle the slot of the tuple we just wrote out, for the next read */
		if (state->memtuples[0].tuple)
			FUNC0(state, state->memtuples[0].tuple);

		/*
		 * pull next tuple from the tape, and replace the written-out tuple in
		 * the heap with it.
		 */
		if (FUNC5(state, srcTape, &stup))
		{
			stup.srctape = srcTape;
			FUNC8(state, &stup);
		}
		else
			FUNC7(state);
	}

	/*
	 * When the heap empties, we're done.  Write an end-of-run marker on the
	 * output tape, and increment its count of real runs.
	 */
	FUNC4(state, destTape);
	state->tp_runs[state->tapeRange]++;

#ifdef TRACE_SORT
	if (trace_sort)
		elog(LOG, "worker %d finished %d-way merge step: %s", state->worker,
			 state->activeTapes, pg_rusage_show(&state->ru_start));
#endif
}
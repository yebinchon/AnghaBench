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
struct TYPE_6__ {int nParticipants; int currentRun; int maxTapes; int* tp_fib; int* tp_runs; int* tp_dummy; int* tp_tapenum; size_t tapeRange; int Level; int /*<<< orphan*/  status; scalar_t__ destTape; int /*<<< orphan*/  worker; int /*<<< orphan*/  tapeset; TYPE_2__* shared; } ;
typedef  TYPE_1__ Tuplesortstate ;
struct TYPE_7__ {int workersFinished; int /*<<< orphan*/  fileset; int /*<<< orphan*/  tapes; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ Sharedsort ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TSS_BUILDRUNS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC7(Tuplesortstate *state)
{
	Sharedsort *shared = state->shared;
	int			nParticipants = state->nParticipants;
	int			workersFinished;
	int			j;

	FUNC0(FUNC1(state));
	FUNC0(nParticipants >= 1);

	FUNC3(&shared->mutex);
	workersFinished = shared->workersFinished;
	FUNC4(&shared->mutex);

	if (nParticipants != workersFinished)
		FUNC5(ERROR, "cannot take over tapes before all workers finish");

	/*
	 * Create the tapeset from worker tapes, including a leader-owned tape at
	 * the end.  Parallel workers are far more expensive than logical tapes,
	 * so the number of tapes allocated here should never be excessive.
	 *
	 * We still have a leader tape, though it's not possible to write to it
	 * due to restrictions in the shared fileset infrastructure used by
	 * logtape.c.  It will never be written to in practice because
	 * randomAccess is disallowed for parallel sorts.
	 */
	FUNC6(state, nParticipants + 1);
	state->tapeset = FUNC2(nParticipants + 1, shared->tapes,
										  &shared->fileset, state->worker);

	/* mergeruns() relies on currentRun for # of runs (in one-pass cases) */
	state->currentRun = nParticipants;

	/*
	 * Initialize variables of Algorithm D to be consistent with runs from
	 * workers having been generated in the leader.
	 *
	 * There will always be exactly 1 run per worker, and exactly one input
	 * tape per run, because workers always output exactly 1 run, even when
	 * there were no input tuples for workers to sort.
	 */
	for (j = 0; j < state->maxTapes; j++)
	{
		/* One real run; no dummy runs for worker tapes */
		state->tp_fib[j] = 1;
		state->tp_runs[j] = 1;
		state->tp_dummy[j] = 0;
		state->tp_tapenum[j] = j;
	}
	/* Leader tape gets one dummy run, and no real runs */
	state->tp_fib[state->tapeRange] = 0;
	state->tp_runs[state->tapeRange] = 0;
	state->tp_dummy[state->tapeRange] = 1;

	state->Level = 1;
	state->destTape = 0;

	state->status = TSS_BUILDRUNS;
}
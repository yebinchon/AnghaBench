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
struct TYPE_5__ {int result_tape; scalar_t__ memtupcount; size_t worker; int /*<<< orphan*/  tapeset; scalar_t__ memtupsize; int /*<<< orphan*/ * memtuples; TYPE_2__* shared; } ;
typedef  TYPE_1__ Tuplesortstate ;
typedef  int /*<<< orphan*/  TapeShare ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  workersFinished; int /*<<< orphan*/ * tapes; } ;
typedef  TYPE_2__ Sharedsort ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(Tuplesortstate *state)
{
	Sharedsort *shared = state->shared;
	TapeShare	output;

	FUNC0(FUNC4(state));
	FUNC0(state->result_tape != -1);
	FUNC0(state->memtupcount == 0);

	/*
	 * Free most remaining memory, in case caller is sensitive to our holding
	 * on to it.  memtuples may not be a tiny merge heap at this point.
	 */
	FUNC5(state->memtuples);
	/* Be tidy */
	state->memtuples = NULL;
	state->memtupsize = 0;

	/*
	 * Parallel worker requires result tape metadata, which is to be stored in
	 * shared memory for leader
	 */
	FUNC1(state->tapeset, state->result_tape, &output);

	/* Store properties of output tape, and update finished worker count */
	FUNC2(&shared->mutex);
	shared->tapes[state->worker] = output;
	shared->workersFinished++;
	FUNC3(&shared->mutex);
}
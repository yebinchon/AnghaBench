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
struct TYPE_7__ {int es_top_eflags; int /*<<< orphan*/  es_crosscheck_snapshot; int /*<<< orphan*/  es_snapshot; int /*<<< orphan*/  es_query_cxt; scalar_t__ es_finished; } ;
struct TYPE_6__ {int /*<<< orphan*/ * totaltime; int /*<<< orphan*/ * planstate; TYPE_2__* estate; int /*<<< orphan*/ * tupDesc; } ;
typedef  TYPE_1__ QueryDesc ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ EState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXEC_FLAG_EXPLAIN_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(QueryDesc *queryDesc)
{
	EState	   *estate;
	MemoryContext oldcontext;

	/* sanity checks */
	FUNC0(queryDesc != NULL);

	estate = queryDesc->estate;

	FUNC0(estate != NULL);

	/*
	 * Check that ExecutorFinish was called, unless in EXPLAIN-only mode. This
	 * Assert is needed because ExecutorFinish is new as of 9.1, and callers
	 * might forget to call it.
	 */
	FUNC0(estate->es_finished ||
		   (estate->es_top_eflags & EXEC_FLAG_EXPLAIN_ONLY));

	/*
	 * Switch into per-query memory context to run ExecEndPlan
	 */
	oldcontext = FUNC3(estate->es_query_cxt);

	FUNC1(queryDesc->planstate, estate);

	/* do away with our snapshots */
	FUNC4(estate->es_snapshot);
	FUNC4(estate->es_crosscheck_snapshot);

	/*
	 * Must switch out of context before destroying it
	 */
	FUNC3(oldcontext);

	/*
	 * Release EState and per-query memory context.  This should release
	 * everything the executor has allocated.
	 */
	FUNC2(estate);

	/* Reset queryDesc fields that no longer point to anything */
	queryDesc->tupDesc = NULL;
	queryDesc->estate = NULL;
	queryDesc->planstate = NULL;
	queryDesc->totaltime = NULL;
}
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
struct TYPE_7__ {int /*<<< orphan*/ * totaltime; TYPE_1__* estate; int /*<<< orphan*/  instrument_options; } ;
struct TYPE_6__ {int /*<<< orphan*/  es_query_cxt; } ;
typedef  TYPE_2__ QueryDesc ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int EXEC_FLAG_EXPLAIN_ONLY ; 
 int /*<<< orphan*/  INSTRUMENT_ALL ; 
 int /*<<< orphan*/  INSTRUMENT_BUFFERS ; 
 int /*<<< orphan*/  INSTRUMENT_ROWS ; 
 int /*<<< orphan*/  INSTRUMENT_TIMER ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ MAX_RANDOM_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ auto_explain_log_analyze ; 
 scalar_t__ auto_explain_log_buffers ; 
 scalar_t__ auto_explain_log_min_duration ; 
 scalar_t__ auto_explain_log_timing ; 
 double auto_explain_sample_rate ; 
 int current_query_sampled ; 
 scalar_t__ nesting_level ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 double FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC7(QueryDesc *queryDesc, int eflags)
{
	/*
	 * At the beginning of each top-level statement, decide whether we'll
	 * sample this statement.  If nested-statement explaining is enabled,
	 * either all nested statements will be explained or none will.
	 *
	 * When in a parallel worker, we should do nothing, which we can implement
	 * cheaply by pretending we decided not to sample the current statement.
	 * If EXPLAIN is active in the parent session, data will be collected and
	 * reported back to the parent, and it's no business of ours to interfere.
	 */
	if (nesting_level == 0)
	{
		if (auto_explain_log_min_duration >= 0 && !FUNC1())
			current_query_sampled = (FUNC5() < auto_explain_sample_rate *
									 ((double) MAX_RANDOM_VALUE + 1));
		else
			current_query_sampled = false;
	}

	if (FUNC3())
	{
		/* Enable per-node instrumentation iff log_analyze is required. */
		if (auto_explain_log_analyze && (eflags & EXEC_FLAG_EXPLAIN_ONLY) == 0)
		{
			if (auto_explain_log_timing)
				queryDesc->instrument_options |= INSTRUMENT_TIMER;
			else
				queryDesc->instrument_options |= INSTRUMENT_ROWS;
			if (auto_explain_log_buffers)
				queryDesc->instrument_options |= INSTRUMENT_BUFFERS;
		}
	}

	if (&prev_ExecutorStart)
		FUNC4(queryDesc, eflags);
	else
		FUNC6(queryDesc, eflags);

	if (FUNC3())
	{
		/*
		 * Set up to track total elapsed time in ExecutorRun.  Make sure the
		 * space is allocated in the per-query context so it will go away at
		 * ExecutorEnd.
		 */
		if (queryDesc->totaltime == NULL)
		{
			MemoryContext oldcxt;

			oldcxt = FUNC2(queryDesc->estate->es_query_cxt);
			queryDesc->totaltime = FUNC0(1, INSTRUMENT_ALL);
			FUNC2(oldcxt);
		}
	}
}
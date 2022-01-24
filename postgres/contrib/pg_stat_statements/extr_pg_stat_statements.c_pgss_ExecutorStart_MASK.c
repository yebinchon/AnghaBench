#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * totaltime; TYPE_2__* estate; TYPE_1__* plannedstmt; } ;
struct TYPE_8__ {int /*<<< orphan*/  es_query_cxt; } ;
struct TYPE_7__ {scalar_t__ queryId; } ;
typedef  TYPE_3__ QueryDesc ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  INSTRUMENT_ALL ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC6(QueryDesc *queryDesc, int eflags)
{
	if (&prev_ExecutorStart)
		FUNC4(queryDesc, eflags);
	else
		FUNC5(queryDesc, eflags);

	/*
	 * If query has queryId zero, don't track it.  This prevents double
	 * counting of optimizable statements that are directly contained in
	 * utility statements.
	 */
	if (FUNC3() && queryDesc->plannedstmt->queryId != FUNC2(0))
	{
		/*
		 * Set up to track total elapsed time in ExecutorRun.  Make sure the
		 * space is allocated in the per-query context so it will go away at
		 * ExecutorEnd.
		 */
		if (queryDesc->totaltime == NULL)
		{
			MemoryContext oldcxt;

			oldcxt = FUNC1(queryDesc->estate->es_query_cxt);
			queryDesc->totaltime = FUNC0(1, INSTRUMENT_ALL);
			FUNC1(oldcxt);
		}
	}
}
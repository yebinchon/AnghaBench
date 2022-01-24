#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_13__ {int /*<<< orphan*/  (* rShutdown ) (TYPE_4__*) ;int /*<<< orphan*/  (* rStartup ) (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int es_top_eflags; scalar_t__ es_processed; int /*<<< orphan*/  es_query_cxt; } ;
struct TYPE_11__ {scalar_t__ operation; int already_executed; scalar_t__ totaltime; TYPE_1__* plannedstmt; int /*<<< orphan*/  planstate; int /*<<< orphan*/  tupDesc; TYPE_4__* dest; TYPE_3__* estate; } ;
struct TYPE_10__ {int /*<<< orphan*/  parallelModeNeeded; scalar_t__ hasReturning; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  TYPE_2__ QueryDesc ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_3__ EState ;
typedef  TYPE_4__ DestReceiver ;
typedef  scalar_t__ CmdType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CMD_SELECT ; 
 int /*<<< orphan*/  ERROR ; 
 int EXEC_FLAG_EXPLAIN_ONLY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 

void
FUNC9(QueryDesc *queryDesc,
					 ScanDirection direction, uint64 count, bool execute_once)
{
	EState	   *estate;
	CmdType		operation;
	DestReceiver *dest;
	bool		sendTuples;
	MemoryContext oldcontext;

	/* sanity checks */
	FUNC0(queryDesc != NULL);

	estate = queryDesc->estate;

	FUNC0(estate != NULL);
	FUNC0(!(estate->es_top_eflags & EXEC_FLAG_EXPLAIN_ONLY));

	/*
	 * Switch into per-query memory context
	 */
	oldcontext = FUNC4(estate->es_query_cxt);

	/* Allow instrumentation of Executor overall runtime */
	if (queryDesc->totaltime)
		FUNC2(queryDesc->totaltime);

	/*
	 * extract information from the query descriptor and the query feature.
	 */
	operation = queryDesc->operation;
	dest = queryDesc->dest;

	/*
	 * startup tuple receiver, if we will be emitting tuples
	 */
	estate->es_processed = 0;

	sendTuples = (operation == CMD_SELECT ||
				  queryDesc->plannedstmt->hasReturning);

	if (sendTuples)
		dest->rStartup(dest, operation, queryDesc->tupDesc);

	/*
	 * run plan
	 */
	if (!FUNC5(direction))
	{
		if (execute_once && queryDesc->already_executed)
			FUNC6(ERROR, "can't re-execute query flagged for single execution");
		queryDesc->already_executed = true;

		FUNC1(estate,
					queryDesc->planstate,
					queryDesc->plannedstmt->parallelModeNeeded,
					operation,
					sendTuples,
					count,
					direction,
					dest,
					execute_once);
	}

	/*
	 * shutdown tuple receiver, if we started it
	 */
	if (sendTuples)
		dest->rShutdown(dest);

	if (queryDesc->totaltime)
		FUNC3(queryDesc->totaltime, estate->es_processed);

	FUNC4(oldcontext);
}
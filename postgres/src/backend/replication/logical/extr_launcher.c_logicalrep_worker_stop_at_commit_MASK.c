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
struct TYPE_6__ {void* relid; void* subid; } ;
struct TYPE_5__ {int nestDepth; int /*<<< orphan*/  workers; struct TYPE_5__* parent; } ;
typedef  TYPE_1__ StopWorkersData ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ LogicalRepWorkerId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  TopTransactionContext ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* on_commit_stop_workers ; 
 void* FUNC4 (int) ; 

void
FUNC5(Oid subid, Oid relid)
{
	int			nestDepth = FUNC1();
	LogicalRepWorkerId *wid;
	MemoryContext oldctx;

	/* Make sure we store the info in context that survives until commit. */
	oldctx = FUNC2(TopTransactionContext);

	/* Check that previous transactions were properly cleaned up. */
	FUNC0(on_commit_stop_workers == NULL ||
		   nestDepth >= on_commit_stop_workers->nestDepth);

	/*
	 * Push a new stack element if we don't already have one for the current
	 * nestDepth.
	 */
	if (on_commit_stop_workers == NULL ||
		nestDepth > on_commit_stop_workers->nestDepth)
	{
		StopWorkersData *newdata = FUNC4(sizeof(StopWorkersData));

		newdata->nestDepth = nestDepth;
		newdata->workers = NIL;
		newdata->parent = on_commit_stop_workers;
		on_commit_stop_workers = newdata;
	}

	/*
	 * Finally add a new worker into the worker list of the current
	 * subtransaction.
	 */
	wid = FUNC4(sizeof(LogicalRepWorkerId));
	wid->subid = subid;
	wid->relid = relid;
	on_commit_stop_workers->workers =
		FUNC3(on_commit_stop_workers->workers, wid);

	FUNC2(oldctx);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int nProcs; TYPE_2__** procs; TYPE_3__* lock; } ;
struct TYPE_12__ {int size; int /*<<< orphan*/  links; } ;
struct TYPE_14__ {TYPE_1__ waitProcs; } ;
struct TYPE_13__ {int /*<<< orphan*/  links; } ;
typedef  TYPE_1__ PROC_QUEUE ;
typedef  TYPE_2__ PGPROC ;
typedef  TYPE_3__ LOCK ;
typedef  int /*<<< orphan*/  DeadLockState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DS_BLOCKED_BY_AUTOVACUUM ; 
 int /*<<< orphan*/  DS_HARD_DEADLOCK ; 
 int /*<<< orphan*/  DS_NO_DEADLOCK ; 
 int /*<<< orphan*/  DS_SOFT_DEADLOCK ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * blocking_autovacuum_proc ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ nCurConstraints ; 
 scalar_t__ nPossibleConstraints ; 
 int nWaitOrders ; 
 int /*<<< orphan*/  possibleConstraints ; 
 TYPE_4__* waitOrders ; 

DeadLockState
FUNC10(PGPROC *proc)
{
	int			i,
				j;

	/* Initialize to "no constraints" */
	nCurConstraints = 0;
	nPossibleConstraints = 0;
	nWaitOrders = 0;

	/* Initialize to not blocked by an autovacuum worker */
	blocking_autovacuum_proc = NULL;

	/* Search for deadlocks and possible fixes */
	if (FUNC1(proc))
	{
		/*
		 * Call FindLockCycle one more time, to record the correct
		 * deadlockDetails[] for the basic state with no rearrangements.
		 */
		int			nSoftEdges;

		FUNC8();

		nWaitOrders = 0;
		if (!FUNC2(proc, possibleConstraints, &nSoftEdges))
			FUNC9(FATAL, "deadlock seems to have disappeared");

		return DS_HARD_DEADLOCK;	/* cannot find a non-deadlocked state */
	}

	/* Apply any needed rearrangements of wait queues */
	for (i = 0; i < nWaitOrders; i++)
	{
		LOCK	   *lock = waitOrders[i].lock;
		PGPROC	  **procs = waitOrders[i].procs;
		int			nProcs = waitOrders[i].nProcs;
		PROC_QUEUE *waitQueue = &(lock->waitProcs);

		FUNC0(nProcs == waitQueue->size);

#ifdef DEBUG_DEADLOCK
		PrintLockQueue(lock, "DeadLockCheck:");
#endif

		/* Reset the queue and re-add procs in the desired order */
		FUNC6(waitQueue);
		for (j = 0; j < nProcs; j++)
		{
			FUNC7(&(waitQueue->links), &(procs[j]->links));
			waitQueue->size++;
		}

#ifdef DEBUG_DEADLOCK
		PrintLockQueue(lock, "rearranged to:");
#endif

		/* See if any waiters for the lock can be woken up now */
		FUNC5(FUNC3(lock), lock);
	}

	/* Return code tells caller if we had to escape a deadlock or not */
	if (nWaitOrders > 0)
		return DS_SOFT_DEADLOCK;
	else if (blocking_autovacuum_proc != NULL)
		return DS_BLOCKED_BY_AUTOVACUUM;
	else
		return DS_NO_DEADLOCK;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* workers; } ;
struct TYPE_3__ {scalar_t__ proc; int /*<<< orphan*/  in_use; } ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_2__* LogicalRepCtx ; 
 int /*<<< orphan*/  LogicalRepWorkerLock ; 
 TYPE_1__* MyLogicalRepWorker ; 
 scalar_t__ MyProc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  logicalrep_worker_onexit ; 
 int max_logical_replication_workers ; 

void
FUNC7(int slot)
{
	/* Block concurrent access. */
	FUNC1(LogicalRepWorkerLock, LW_EXCLUSIVE);

	FUNC0(slot >= 0 && slot < max_logical_replication_workers);
	MyLogicalRepWorker = &LogicalRepCtx->workers[slot];

	if (!MyLogicalRepWorker->in_use)
	{
		FUNC2(LogicalRepWorkerLock);
		FUNC4(ERROR,
				(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC6("logical replication worker slot %d is empty, cannot attach",
						slot)));
	}

	if (MyLogicalRepWorker->proc)
	{
		FUNC2(LogicalRepWorkerLock);
		FUNC4(ERROR,
				(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC6("logical replication worker slot %d is already used by "
						"another worker, cannot attach", slot)));
	}

	MyLogicalRepWorker->proc = MyProc;
	FUNC3(logicalrep_worker_onexit, (Datum) 0);

	FUNC2(LogicalRepWorkerLock);
}
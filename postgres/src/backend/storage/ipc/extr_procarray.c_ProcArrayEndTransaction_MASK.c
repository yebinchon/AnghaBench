#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_9__ {size_t pgprocno; int recoveryConflictPending; int /*<<< orphan*/  lxid; } ;
struct TYPE_8__ {int delayChkpt; scalar_t__ nxids; int overflowed; int /*<<< orphan*/  vacuumFlags; int /*<<< orphan*/  xmin; int /*<<< orphan*/  xid; } ;
typedef  TYPE_1__ PGXACT ;
typedef  TYPE_2__ PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  InvalidLocalTransactionId ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  PROC_VACUUM_STATE_MASK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* allPgXact ; 

void
FUNC6(PGPROC *proc, TransactionId latestXid)
{
	PGXACT	   *pgxact = &allPgXact[proc->pgprocno];

	if (FUNC5(latestXid))
	{
		/*
		 * We must lock ProcArrayLock while clearing our advertised XID, so
		 * that we do not exit the set of "running" transactions while someone
		 * else is taking a snapshot.  See discussion in
		 * src/backend/access/transam/README.
		 */
		FUNC0(FUNC5(allPgXact[proc->pgprocno].xid));

		/*
		 * If we can immediately acquire ProcArrayLock, we clear our own XID
		 * and release the lock.  If not, use group XID clearing to improve
		 * efficiency.
		 */
		if (FUNC1(ProcArrayLock, LW_EXCLUSIVE))
		{
			FUNC3(proc, pgxact, latestXid);
			FUNC2(ProcArrayLock);
		}
		else
			FUNC4(proc, latestXid);
	}
	else
	{
		/*
		 * If we have no XID, we don't need to lock, since we won't affect
		 * anyone else's calculation of a snapshot.  We might change their
		 * estimate of global xmin, but that's OK.
		 */
		FUNC0(!FUNC5(allPgXact[proc->pgprocno].xid));

		proc->lxid = InvalidLocalTransactionId;
		pgxact->xmin = InvalidTransactionId;
		/* must be cleared with xid/xmin: */
		pgxact->vacuumFlags &= ~PROC_VACUUM_STATE_MASK;
		pgxact->delayChkpt = false; /* be sure this is cleared in abort */
		proc->recoveryConflictPending = false;

		FUNC0(pgxact->nxids == 0);
		FUNC0(pgxact->overflowed == false);
	}
}
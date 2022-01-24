#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_13__ {size_t pgprocno; int procArrayGroupMember; int /*<<< orphan*/  sem; int /*<<< orphan*/  procArrayGroupNext; int /*<<< orphan*/  procArrayGroupMemberXid; } ;
struct TYPE_12__ {int /*<<< orphan*/  xid; } ;
struct TYPE_11__ {int /*<<< orphan*/  procArrayGroupFirst; } ;
typedef  TYPE_1__ PROC_HDR ;
typedef  TYPE_2__ PGXACT ;
typedef  TYPE_3__ PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t INVALID_PGPROCNO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_3__* MyProc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 TYPE_1__* ProcGlobal ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_PROCARRAY_GROUP_UPDATE ; 
 TYPE_2__* allPgXact ; 
 TYPE_3__* allProcs ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,size_t*,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(PGPROC *proc, TransactionId latestXid)
{
	PROC_HDR   *procglobal = ProcGlobal;
	uint32		nextidx;
	uint32		wakeidx;

	/* We should definitely have an XID to clear. */
	FUNC0(FUNC6(allPgXact[proc->pgprocno].xid));

	/* Add ourselves to the list of processes needing a group XID clear. */
	proc->procArrayGroupMember = true;
	proc->procArrayGroupMemberXid = latestXid;
	nextidx = FUNC9(&procglobal->procArrayGroupFirst);
	while (true)
	{
		FUNC10(&proc->procArrayGroupNext, nextidx);

		if (FUNC7(&procglobal->procArrayGroupFirst,
										   &nextidx,
										   (uint32) proc->pgprocno))
			break;
	}

	/*
	 * If the list was not empty, the leader will clear our XID.  It is
	 * impossible to have followers without a leader because the first process
	 * that has added itself to the list will always have nextidx as
	 * INVALID_PGPROCNO.
	 */
	if (nextidx != INVALID_PGPROCNO)
	{
		int			extraWaits = 0;

		/* Sleep until the leader clears our XID. */
		FUNC13(WAIT_EVENT_PROCARRAY_GROUP_UPDATE);
		for (;;)
		{
			/* acts as a read barrier */
			FUNC3(proc->sem);
			if (!proc->procArrayGroupMember)
				break;
			extraWaits++;
		}
		FUNC12();

		FUNC0(FUNC9(&proc->procArrayGroupNext) == INVALID_PGPROCNO);

		/* Fix semaphore count for any absorbed wakeups */
		while (extraWaits-- > 0)
			FUNC4(proc->sem);
		return;
	}

	/* We are the leader.  Acquire the lock on behalf of everyone. */
	FUNC1(ProcArrayLock, LW_EXCLUSIVE);

	/*
	 * Now that we've got the lock, clear the list of processes waiting for
	 * group XID clearing, saving a pointer to the head of the list.  Trying
	 * to pop elements one at a time could lead to an ABA problem.
	 */
	nextidx = FUNC8(&procglobal->procArrayGroupFirst,
									 INVALID_PGPROCNO);

	/* Remember head of list so we can perform wakeups after dropping lock. */
	wakeidx = nextidx;

	/* Walk the list and clear all XIDs. */
	while (nextidx != INVALID_PGPROCNO)
	{
		PGPROC	   *proc = &allProcs[nextidx];
		PGXACT	   *pgxact = &allPgXact[nextidx];

		FUNC5(proc, pgxact, proc->procArrayGroupMemberXid);

		/* Move to next proc in list. */
		nextidx = FUNC9(&proc->procArrayGroupNext);
	}

	/* We're done with the lock now. */
	FUNC2(ProcArrayLock);

	/*
	 * Now that we've released the lock, go back and wake everybody up.  We
	 * don't do this under the lock so as to keep lock hold times to a
	 * minimum.  The system calls we need to perform to wake other processes
	 * up are probably much slower than the simple memory writes we did while
	 * holding the lock.
	 */
	while (wakeidx != INVALID_PGPROCNO)
	{
		PGPROC	   *proc = &allProcs[wakeidx];

		wakeidx = FUNC9(&proc->procArrayGroupNext);
		FUNC10(&proc->procArrayGroupNext, INVALID_PGPROCNO);

		/* ensure all previous writes are visible before follower continues. */
		FUNC11();

		proc->procArrayGroupMember = false;

		if (proc != MyProc)
			FUNC4(proc->sem);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pid; int /*<<< orphan*/  lockGroupLink; int /*<<< orphan*/  lockGroupMembers; struct TYPE_5__* lockGroupLeader; } ;
typedef  TYPE_1__ PGPROC ;
typedef  int /*<<< orphan*/  LWLock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 TYPE_1__* MyProc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool
FUNC5(PGPROC *leader, int pid)
{
	LWLock	   *leader_lwlock;
	bool		ok = false;

	/* Group leader can't become member of group */
	FUNC0(MyProc != leader);

	/* Can't already be a member of a group */
	FUNC0(MyProc->lockGroupLeader == NULL);

	/* PID must be valid. */
	FUNC0(pid != 0);

	/*
	 * Get lock protecting the group fields.  Note LockHashPartitionLockByProc
	 * accesses leader->pgprocno in a PGPROC that might be free.  This is safe
	 * because all PGPROCs' pgprocno fields are set during shared memory
	 * initialization and never change thereafter; so we will acquire the
	 * correct lock even if the leader PGPROC is in process of being recycled.
	 */
	leader_lwlock = FUNC3(leader);
	FUNC1(leader_lwlock, LW_EXCLUSIVE);

	/* Is this the leader we're looking for? */
	if (leader->pid == pid && leader->lockGroupLeader == leader)
	{
		/* OK, join the group */
		ok = true;
		MyProc->lockGroupLeader = leader;
		FUNC4(&leader->lockGroupMembers, &MyProc->lockGroupLink);
	}
	FUNC2(leader_lwlock);

	return ok;
}
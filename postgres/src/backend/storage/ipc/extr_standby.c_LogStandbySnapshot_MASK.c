#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xl_standby_lock ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  RunningTransactions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 scalar_t__ WAL_LEVEL_LOGICAL ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  XidGenLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ wal_level ; 

XLogRecPtr
FUNC8(void)
{
	XLogRecPtr	recptr;
	RunningTransactions running;
	xl_standby_lock *locks;
	int			nlocks;

	FUNC0(FUNC6());

	/*
	 * Get details of any AccessExclusiveLocks being held at the moment.
	 */
	locks = FUNC2(&nlocks);
	if (nlocks > 0)
		FUNC4(nlocks, locks);
	FUNC7(locks);

	/*
	 * Log details of all in-progress transactions. This should be the last
	 * record we write, because standby will open up when it sees this.
	 */
	running = FUNC1();

	/*
	 * GetRunningTransactionData() acquired ProcArrayLock, we must release it.
	 * For Hot Standby this can be done before inserting the WAL record
	 * because ProcArrayApplyRecoveryInfo() rechecks the commit status using
	 * the clog. For logical decoding, though, the lock can't be released
	 * early because the clog might be "in the future" from the POV of the
	 * historic snapshot. This would allow for situations where we're waiting
	 * for the end of a transaction listed in the xl_running_xacts record
	 * which, according to the WAL, has committed before the xl_running_xacts
	 * record. Fortunately this routine isn't executed frequently, and it's
	 * only a shared lock.
	 */
	if (wal_level < WAL_LEVEL_LOGICAL)
		FUNC3(ProcArrayLock);

	recptr = FUNC5(running);

	/* Release lock if we kept it longer ... */
	if (wal_level >= WAL_LEVEL_LOGICAL)
		FUNC3(ProcArrayLock);

	/* GetRunningTransactionData() acquired XidGenLock, we must release it */
	FUNC3(XidGenLock);

	return recptr;
}
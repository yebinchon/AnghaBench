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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_9__ {scalar_t__ nRequested; int /*<<< orphan*/  tag; int /*<<< orphan*/  procLocks; } ;
struct TYPE_8__ {scalar_t__ holdMask; int /*<<< orphan*/  tag; int /*<<< orphan*/  procLink; int /*<<< orphan*/  lockLink; } ;
typedef  TYPE_1__ PROCLOCK ;
typedef  int /*<<< orphan*/  LockMethod ;
typedef  TYPE_2__ LOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LockMethodLockHash ; 
 int /*<<< orphan*/  LockMethodProcLockHash ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(LOCK *lock, PROCLOCK *proclock,
			LockMethod lockMethodTable, uint32 hashcode,
			bool wakeupNeeded)
{
	/*
	 * If this was my last hold on this lock, delete my entry in the proclock
	 * table.
	 */
	if (proclock->holdMask == 0)
	{
		uint32		proclock_hashcode;

		FUNC2("CleanUpLock: deleting", proclock);
		FUNC5(&proclock->lockLink);
		FUNC5(&proclock->procLink);
		proclock_hashcode = FUNC3(&proclock->tag, hashcode);
		if (!FUNC8(LockMethodProcLockHash,
										 (void *) &(proclock->tag),
										 proclock_hashcode,
										 HASH_REMOVE,
										 NULL))
			FUNC7(PANIC, "proclock table corrupted");
	}

	if (lock->nRequested == 0)
	{
		/*
		 * The caller just released the last lock, so garbage-collect the lock
		 * object.
		 */
		FUNC1("CleanUpLock: deleting", lock, 0);
		FUNC0(FUNC6(&(lock->procLocks)));
		if (!FUNC8(LockMethodLockHash,
										 (void *) &(lock->tag),
										 hashcode,
										 HASH_REMOVE,
										 NULL))
			FUNC7(PANIC, "lock table corrupted");
	}
	else if (wakeupNeeded)
	{
		/* There are waiters on this lock, so wake them up. */
		FUNC4(lockMethodTable, lock);
	}
}
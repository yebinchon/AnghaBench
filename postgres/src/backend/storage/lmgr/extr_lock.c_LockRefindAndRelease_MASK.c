#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_15__ {scalar_t__* count; int /*<<< orphan*/  mutex; } ;
struct TYPE_14__ {int /*<<< orphan*/ * lockModeNames; } ;
struct TYPE_13__ {int holdMask; } ;
struct TYPE_12__ {int /*<<< orphan*/ * myProc; int /*<<< orphan*/ * myLock; } ;
typedef  TYPE_1__ PROCLOCKTAG ;
typedef  TYPE_2__ PROCLOCK ;
typedef  int /*<<< orphan*/  PGPROC ;
typedef  TYPE_3__* LockMethod ;
typedef  int /*<<< orphan*/  LWLock ;
typedef  int /*<<< orphan*/  LOCKTAG ;
typedef  size_t LOCKMODE ;
typedef  int /*<<< orphan*/  LOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,size_t,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (size_t) ; 
 TYPE_9__* FastPathStrongRelationLocks ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/ * FUNC7 (size_t) ; 
 int /*<<< orphan*/  LockMethodLockHash ; 
 int /*<<< orphan*/  LockMethodProcLockHash ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_2__*) ; 
 size_t FUNC10 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,size_t,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(LockMethod lockMethodTable, PGPROC *proc,
					 LOCKTAG *locktag, LOCKMODE lockmode,
					 bool decrement_strong_lock_count)
{
	LOCK	   *lock;
	PROCLOCK   *proclock;
	PROCLOCKTAG proclocktag;
	uint32		hashcode;
	uint32		proclock_hashcode;
	LWLock	   *partitionLock;
	bool		wakeupNeeded;

	hashcode = FUNC8(locktag);
	partitionLock = FUNC7(hashcode);

	FUNC5(partitionLock, LW_EXCLUSIVE);

	/*
	 * Re-find the lock object (it had better be there).
	 */
	lock = (LOCK *) FUNC15(LockMethodLockHash,
												(void *) locktag,
												hashcode,
												HASH_FIND,
												NULL);
	if (!lock)
		FUNC14(PANIC, "failed to re-find shared lock object");

	/*
	 * Re-find the proclock object (ditto).
	 */
	proclocktag.myLock = lock;
	proclocktag.myProc = proc;

	proclock_hashcode = FUNC10(&proclocktag, hashcode);

	proclock = (PROCLOCK *) FUNC15(LockMethodProcLockHash,
														(void *) &proclocktag,
														proclock_hashcode,
														HASH_FIND,
														NULL);
	if (!proclock)
		FUNC14(PANIC, "failed to re-find shared proclock object");

	/*
	 * Double-check that we are actually holding a lock of the type we want to
	 * release.
	 */
	if (!(proclock->holdMask & FUNC4(lockmode)))
	{
		FUNC9("lock_twophase_postcommit: WRONGTYPE", proclock);
		FUNC6(partitionLock);
		FUNC14(WARNING, "you don't own a lock of type %s",
			 lockMethodTable->lockModeNames[lockmode]);
		return;
	}

	/*
	 * Do the releasing.  CleanUpLock will waken any now-wakable waiters.
	 */
	wakeupNeeded = FUNC13(lock, lockmode, proclock, lockMethodTable);

	FUNC1(lock, proclock,
				lockMethodTable, hashcode,
				wakeupNeeded);

	FUNC6(partitionLock);

	/*
	 * Decrement strong lock count.  This logic is needed only for 2PC.
	 */
	if (decrement_strong_lock_count
		&& FUNC2(locktag, lockmode))
	{
		uint32		fasthashcode = FUNC3(hashcode);

		FUNC11(&FastPathStrongRelationLocks->mutex);
		FUNC0(FastPathStrongRelationLocks->count[fasthashcode] > 0);
		FastPathStrongRelationLocks->count[fasthashcode]--;
		FUNC12(&FastPathStrongRelationLocks->mutex);
	}
}
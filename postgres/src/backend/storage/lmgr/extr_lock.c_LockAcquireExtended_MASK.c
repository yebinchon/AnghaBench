#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_6__ ;
typedef  struct TYPE_43__   TYPE_5__ ;
typedef  struct TYPE_42__   TYPE_4__ ;
typedef  struct TYPE_41__   TYPE_3__ ;
typedef  struct TYPE_40__   TYPE_32__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;
typedef  struct TYPE_37__   TYPE_14__ ;
typedef  struct TYPE_36__   TYPE_11__ ;

/* Type definitions */
typedef  size_t uint32 ;
typedef  int /*<<< orphan*/  localtag ;
struct TYPE_44__ {size_t hashcode; scalar_t__ nLocks; int holdsStrongLockCount; int lockCleared; int numLockOwners; int maxLockOwners; TYPE_4__* lock; TYPE_1__* proclock; int /*<<< orphan*/ * lockOwners; } ;
struct TYPE_41__ {size_t locktag_lockmethodid; scalar_t__ locktag_type; int /*<<< orphan*/  locktag_field2; int /*<<< orphan*/  locktag_field1; int /*<<< orphan*/  locktag_field4; int /*<<< orphan*/  locktag_field3; } ;
struct TYPE_43__ {size_t mode; TYPE_3__ lock; } ;
struct TYPE_42__ {int waitMask; scalar_t__ nRequested; scalar_t__* requested; scalar_t__ nGranted; } ;
struct TYPE_40__ {scalar_t__* count; } ;
struct TYPE_39__ {size_t numLockModes; int* conflictTab; int /*<<< orphan*/ * lockModeNames; } ;
struct TYPE_37__ {TYPE_4__* myLock; } ;
struct TYPE_38__ {int holdMask; TYPE_14__ tag; int /*<<< orphan*/  procLink; int /*<<< orphan*/  lockLink; } ;
struct TYPE_36__ {int heldLocks; int /*<<< orphan*/  backendLock; } ;
typedef  int /*<<< orphan*/ * ResourceOwner ;
typedef  TYPE_1__ PROCLOCK ;
typedef  TYPE_2__* LockMethod ;
typedef  int /*<<< orphan*/  LockAcquireResult ;
typedef  int /*<<< orphan*/  LWLock ;
typedef  TYPE_3__ LOCKTAG ;
typedef  size_t LOCKMODE ;
typedef  size_t LOCKMETHODID ;
typedef  TYPE_4__ LOCK ;
typedef  TYPE_5__ LOCALLOCKTAG ;
typedef  int /*<<< orphan*/  LOCALLOCKOWNER ;
typedef  TYPE_6__ LOCALLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,size_t) ; 
 scalar_t__ FUNC3 (TYPE_3__ const*,size_t) ; 
 int /*<<< orphan*/ * CurrentResourceOwner ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC4 (TYPE_3__ const*,size_t) ; 
 scalar_t__ FP_LOCK_SLOTS_PER_BACKEND ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FastPathLocalUseCount ; 
 size_t FUNC6 (size_t) ; 
 TYPE_32__* FastPathStrongRelationLocks ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  InRecovery ; 
 int /*<<< orphan*/  LOCKACQUIRE_ALREADY_CLEAR ; 
 int /*<<< orphan*/  LOCKACQUIRE_ALREADY_HELD ; 
 int /*<<< orphan*/  LOCKACQUIRE_NOT_AVAIL ; 
 int /*<<< orphan*/  LOCKACQUIRE_OK ; 
 int FUNC11 (size_t) ; 
 scalar_t__ LOCKTAG_OBJECT ; 
 scalar_t__ LOCKTAG_RELATION ; 
 scalar_t__ FUNC12 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int FUNC16 (TYPE_2__*,size_t,TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC17 (size_t) ; 
 int /*<<< orphan*/  LockMethodLocalHash ; 
 int /*<<< orphan*/  LockMethodProcLockHash ; 
 TYPE_2__** LockMethods ; 
 size_t FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int) ; 
 TYPE_11__* MyProc ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC23 (char*,TYPE_1__*) ; 
 size_t FUNC24 (TYPE_14__*,size_t) ; 
 scalar_t__ FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (TYPE_6__*) ; 
 size_t RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int STATUS_FOUND ; 
 int STATUS_OK ; 
 TYPE_1__* FUNC28 (TYPE_2__*,TYPE_11__*,TYPE_3__ const*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC31 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (char*) ; 
 int /*<<< orphan*/  FUNC37 (char*,...) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC40 (TYPE_2__**) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ *,int) ; 

LockAcquireResult
FUNC42(const LOCKTAG *locktag,
					LOCKMODE lockmode,
					bool sessionLock,
					bool dontWait,
					bool reportMemoryError,
					LOCALLOCK **locallockp)
{
	LOCKMETHODID lockmethodid = locktag->locktag_lockmethodid;
	LockMethod	lockMethodTable;
	LOCALLOCKTAG localtag;
	LOCALLOCK  *locallock;
	LOCK	   *lock;
	PROCLOCK   *proclock;
	bool		found;
	ResourceOwner owner;
	uint32		hashcode;
	LWLock	   *partitionLock;
	int			status;
	bool		log_lock = false;

	if (lockmethodid <= 0 || lockmethodid >= FUNC40(LockMethods))
		FUNC33(ERROR, "unrecognized lock method: %d", lockmethodid);
	lockMethodTable = LockMethods[lockmethodid];
	if (lockmode <= 0 || lockmode > lockMethodTable->numLockModes)
		FUNC33(ERROR, "unrecognized lock mode: %d", lockmode);

	if (FUNC25() && !InRecovery &&
		(locktag->locktag_type == LOCKTAG_OBJECT ||
		 locktag->locktag_type == LOCKTAG_RELATION) &&
		lockmode > RowExclusiveLock)
		FUNC34(ERROR,
				(FUNC35(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC37("cannot acquire lock mode %s on database objects while recovery is in progress",
						lockMethodTable->lockModeNames[lockmode]),
				 FUNC36("Only RowExclusiveLock or less can be acquired on database objects during recovery.")));

#ifdef LOCK_DEBUG
	if (LOCK_DEBUG_ENABLED(locktag))
		elog(LOG, "LockAcquire: lock [%u,%u] %s",
			 locktag->locktag_field1, locktag->locktag_field2,
			 lockMethodTable->lockModeNames[lockmode]);
#endif

	/* Identify owner for lock */
	if (sessionLock)
		owner = NULL;
	else
		owner = CurrentResourceOwner;

	/*
	 * Find or create a LOCALLOCK entry for this lock and lockmode
	 */
	FUNC21(&localtag, 0, sizeof(localtag)); /* must clear padding */
	localtag.lock = *locktag;
	localtag.mode = lockmode;

	locallock = (LOCALLOCK *) FUNC38(LockMethodLocalHash,
										  (void *) &localtag,
										  HASH_ENTER, &found);

	/*
	 * if it's a new locallock object, initialize it
	 */
	if (!found)
	{
		locallock->lock = NULL;
		locallock->proclock = NULL;
		locallock->hashcode = FUNC18(&(localtag.lock));
		locallock->nLocks = 0;
		locallock->holdsStrongLockCount = false;
		locallock->lockCleared = false;
		locallock->numLockOwners = 0;
		locallock->maxLockOwners = 8;
		locallock->lockOwners = NULL;	/* in case next line fails */
		locallock->lockOwners = (LOCALLOCKOWNER *)
			FUNC22(TopMemoryContext,
							   locallock->maxLockOwners * sizeof(LOCALLOCKOWNER));
	}
	else
	{
		/* Make sure there will be room to remember the lock */
		if (locallock->numLockOwners >= locallock->maxLockOwners)
		{
			int			newsize = locallock->maxLockOwners * 2;

			locallock->lockOwners = (LOCALLOCKOWNER *)
				FUNC41(locallock->lockOwners,
						 newsize * sizeof(LOCALLOCKOWNER));
			locallock->maxLockOwners = newsize;
		}
	}
	hashcode = locallock->hashcode;

	if (locallockp)
		*locallockp = locallock;

	/*
	 * If we already hold the lock, we can just increase the count locally.
	 *
	 * If lockCleared is already set, caller need not worry about absorbing
	 * sinval messages related to the lock's object.
	 */
	if (locallock->nLocks > 0)
	{
		FUNC10(locallock, owner);
		if (locallock->lockCleared)
			return LOCKACQUIRE_ALREADY_CLEAR;
		else
			return LOCKACQUIRE_ALREADY_HELD;
	}

	/*
	 * Prepare to emit a WAL record if acquisition of this lock needs to be
	 * replayed in a standby server.
	 *
	 * Here we prepare to log; after lock is acquired we'll issue log record.
	 * This arrangement simplifies error recovery in case the preparation step
	 * fails.
	 *
	 * Only AccessExclusiveLocks can conflict with lock types that read-only
	 * transactions can acquire in a standby server. Make sure this definition
	 * matches the one in GetRunningTransactionLocks().
	 */
	if (lockmode >= AccessExclusiveLock &&
		locktag->locktag_type == LOCKTAG_RELATION &&
		!FUNC25() &&
		FUNC32())
	{
		FUNC20();
		log_lock = true;
	}

	/*
	 * Attempt to take lock via fast path, if eligible.  But if we remember
	 * having filled up the fast path array, we don't attempt to make any
	 * further use of it until we release some locks.  It's possible that some
	 * other backend has transferred some of those locks to the shared hash
	 * table, leaving space free, but it's not worth acquiring the LWLock just
	 * to check.  It's also possible that we're acquiring a second or third
	 * lock type on a relation we have already locked using the fast-path, but
	 * for now we don't worry about that case either.
	 */
	if (FUNC4(locktag, lockmode) &&
		FastPathLocalUseCount < FP_LOCK_SLOTS_PER_BACKEND)
	{
		uint32		fasthashcode = FUNC6(hashcode);
		bool		acquired;

		/*
		 * LWLockAcquire acts as a memory sequencing point, so it's safe to
		 * assume that any strong locker whose increment to
		 * FastPathStrongRelationLocks->counts becomes visible after we test
		 * it has yet to begin to transfer fast-path locks.
		 */
		FUNC14(&MyProc->backendLock, LW_EXCLUSIVE);
		if (FastPathStrongRelationLocks->count[fasthashcode] != 0)
			acquired = false;
		else
			acquired = FUNC5(locktag->locktag_field2,
												 lockmode);
		FUNC15(&MyProc->backendLock);
		if (acquired)
		{
			/*
			 * The locallock might contain stale pointers to some old shared
			 * objects; we MUST reset these to null before considering the
			 * lock to be acquired via fast-path.
			 */
			locallock->lock = NULL;
			locallock->proclock = NULL;
			FUNC10(locallock, owner);
			return LOCKACQUIRE_OK;
		}
	}

	/*
	 * If this lock could potentially have been taken via the fast-path by
	 * some other backend, we must (temporarily) disable further use of the
	 * fast-path for this lock tag, and migrate any locks already taken via
	 * this method to the main lock table.
	 */
	if (FUNC3(locktag, lockmode))
	{
		uint32		fasthashcode = FUNC6(hashcode);

		FUNC2(locallock, fasthashcode);
		if (!FUNC7(lockMethodTable, locktag,
										   hashcode))
		{
			FUNC0();
			if (locallock->nLocks == 0)
				FUNC26(locallock);
			if (locallockp)
				*locallockp = NULL;
			if (reportMemoryError)
				FUNC34(ERROR,
						(FUNC35(ERRCODE_OUT_OF_MEMORY),
						 FUNC37("out of shared memory"),
						 FUNC36("You might need to increase max_locks_per_transaction.")));
			else
				return LOCKACQUIRE_NOT_AVAIL;
		}
	}

	/*
	 * We didn't find the lock in our LOCALLOCK table, and we didn't manage to
	 * take it via the fast-path, either, so we've got to mess with the shared
	 * lock table.
	 */
	partitionLock = FUNC17(hashcode);

	FUNC14(partitionLock, LW_EXCLUSIVE);

	/*
	 * Find or create lock and proclock entries with this tag
	 *
	 * Note: if the locallock object already existed, it might have a pointer
	 * to the lock already ... but we should not assume that that pointer is
	 * valid, since a lock object with zero hold and request counts can go
	 * away anytime.  So we have to use SetupLockInTable() to recompute the
	 * lock and proclock pointers, even if they're already set.
	 */
	proclock = FUNC28(lockMethodTable, MyProc, locktag,
								hashcode, lockmode);
	if (!proclock)
	{
		FUNC0();
		FUNC15(partitionLock);
		if (locallock->nLocks == 0)
			FUNC26(locallock);
		if (locallockp)
			*locallockp = NULL;
		if (reportMemoryError)
			FUNC34(ERROR,
					(FUNC35(ERRCODE_OUT_OF_MEMORY),
					 FUNC37("out of shared memory"),
					 FUNC36("You might need to increase max_locks_per_transaction.")));
		else
			return LOCKACQUIRE_NOT_AVAIL;
	}
	locallock->proclock = proclock;
	lock = proclock->tag.myLock;
	locallock->lock = lock;

	/*
	 * If lock requested conflicts with locks requested by waiters, must join
	 * wait queue.  Otherwise, check for conflict with already-held locks.
	 * (That's last because most complex check.)
	 */
	if (lockMethodTable->conflictTab[lockmode] & lock->waitMask)
		status = STATUS_FOUND;
	else
		status = FUNC16(lockMethodTable, lockmode,
									lock, proclock);

	if (status == STATUS_OK)
	{
		/* No conflict with held or previously requested locks */
		FUNC9(lock, proclock, lockmode);
		FUNC10(locallock, owner);
	}
	else
	{
		FUNC1(status == STATUS_FOUND);

		/*
		 * We can't acquire the lock immediately.  If caller specified no
		 * blocking, remove useless table entries and return
		 * LOCKACQUIRE_NOT_AVAIL without waiting.
		 */
		if (dontWait)
		{
			FUNC0();
			if (proclock->holdMask == 0)
			{
				uint32		proclock_hashcode;

				proclock_hashcode = FUNC24(&proclock->tag, hashcode);
				FUNC27(&proclock->lockLink);
				FUNC27(&proclock->procLink);
				if (!FUNC39(LockMethodProcLockHash,
												 (void *) &(proclock->tag),
												 proclock_hashcode,
												 HASH_REMOVE,
												 NULL))
					FUNC33(PANIC, "proclock table corrupted");
			}
			else
				FUNC23("LockAcquire: NOWAIT", proclock);
			lock->nRequested--;
			lock->requested[lockmode]--;
			FUNC13("LockAcquire: conditional lock failed", lock, lockmode);
			FUNC1((lock->nRequested > 0) && (lock->requested[lockmode] >= 0));
			FUNC1(lock->nGranted <= lock->nRequested);
			FUNC15(partitionLock);
			if (locallock->nLocks == 0)
				FUNC26(locallock);
			if (locallockp)
				*locallockp = NULL;
			return LOCKACQUIRE_NOT_AVAIL;
		}

		/*
		 * Set bitmask of locks this process already holds on this object.
		 */
		MyProc->heldLocks = proclock->holdMask;

		/*
		 * Sleep till someone wakes me up.
		 */

		FUNC30(locktag->locktag_field1,
										 locktag->locktag_field2,
										 locktag->locktag_field3,
										 locktag->locktag_field4,
										 locktag->locktag_type,
										 lockmode);

		FUNC31(locallock, owner);

		FUNC29(locktag->locktag_field1,
										locktag->locktag_field2,
										locktag->locktag_field3,
										locktag->locktag_field4,
										locktag->locktag_type,
										lockmode);

		/*
		 * NOTE: do not do any material change of state between here and
		 * return.  All required changes in locktable state must have been
		 * done when the lock was granted to us --- see notes in WaitOnLock.
		 */

		/*
		 * Check the proclock entry status, in case something in the ipc
		 * communication doesn't work correctly.
		 */
		if (!(proclock->holdMask & FUNC11(lockmode)))
		{
			FUNC0();
			FUNC23("LockAcquire: INCONSISTENT", proclock);
			FUNC13("LockAcquire: INCONSISTENT", lock, lockmode);
			/* Should we retry ? */
			FUNC15(partitionLock);
			FUNC33(ERROR, "LockAcquire failed");
		}
		FUNC23("LockAcquire: granted", proclock);
		FUNC13("LockAcquire: granted", lock, lockmode);
	}

	/*
	 * Lock state is fully up-to-date now; if we error out after this, no
	 * special error cleanup is required.
	 */
	FUNC8();

	FUNC15(partitionLock);

	/*
	 * Emit a WAL record if acquisition of this lock needs to be replayed in a
	 * standby server.
	 */
	if (log_lock)
	{
		/*
		 * Decode the locktag back to the original values, to avoid sending
		 * lots of empty bytes with every message.  See lock.h to check how a
		 * locktag is defined for LOCKTAG_RELATION
		 */
		FUNC19(locktag->locktag_field1,
							   locktag->locktag_field2);
	}

	return LOCKACQUIRE_OK;
}
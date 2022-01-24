#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  localtag ;
struct TYPE_20__ {scalar_t__ nLocks; TYPE_1__* proclock; TYPE_4__* lock; int /*<<< orphan*/  hashcode; } ;
struct TYPE_17__ {size_t locktag_lockmethodid; int /*<<< orphan*/  locktag_field2; int /*<<< orphan*/  locktag_field1; } ;
struct TYPE_19__ {size_t mode; TYPE_3__ lock; } ;
struct TYPE_18__ {int waitMask; } ;
struct TYPE_16__ {size_t numLockModes; size_t* lockModeNames; int* conflictTab; } ;
struct TYPE_15__ {int holdMask; } ;
typedef  TYPE_1__ PROCLOCK ;
typedef  TYPE_2__* LockMethod ;
typedef  int /*<<< orphan*/  LWLock ;
typedef  TYPE_3__ LOCKTAG ;
typedef  size_t LOCKMODE ;
typedef  size_t LOCKMETHODID ;
typedef  TYPE_4__ LOCK ;
typedef  TYPE_5__ LOCALLOCKTAG ;
typedef  TYPE_6__ LOCALLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LockMethodLocalHash ; 
 TYPE_2__** LockMethods ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC11 (TYPE_2__**) ; 

bool
FUNC12(const LOCKTAG *locktag, LOCKMODE lockmode, bool sessionLock)
{
	LOCKMETHODID lockmethodid = locktag->locktag_lockmethodid;
	LockMethod	lockMethodTable;
	LOCALLOCKTAG localtag;
	LOCALLOCK  *locallock;
	LOCK	   *lock;
	PROCLOCK   *proclock;
	LWLock	   *partitionLock;
	bool		hasWaiters = false;

	if (lockmethodid <= 0 || lockmethodid >= FUNC11(LockMethods))
		FUNC9(ERROR, "unrecognized lock method: %d", lockmethodid);
	lockMethodTable = LockMethods[lockmethodid];
	if (lockmode <= 0 || lockmode > lockMethodTable->numLockModes)
		FUNC9(ERROR, "unrecognized lock mode: %d", lockmode);

#ifdef LOCK_DEBUG
	if (LOCK_DEBUG_ENABLED(locktag))
		elog(LOG, "LockHasWaiters: lock [%u,%u] %s",
			 locktag->locktag_field1, locktag->locktag_field2,
			 lockMethodTable->lockModeNames[lockmode]);
#endif

	/*
	 * Find the LOCALLOCK entry for this lock and lockmode
	 */
	FUNC6(&localtag, 0, sizeof(localtag)); /* must clear padding */
	localtag.lock = *locktag;
	localtag.mode = lockmode;

	locallock = (LOCALLOCK *) FUNC10(LockMethodLocalHash,
										  (void *) &localtag,
										  HASH_FIND, NULL);

	/*
	 * let the caller print its own error message, too. Do not ereport(ERROR).
	 */
	if (!locallock || locallock->nLocks <= 0)
	{
		FUNC9(WARNING, "you don't own a lock of type %s",
			 lockMethodTable->lockModeNames[lockmode]);
		return false;
	}

	/*
	 * Check the shared lock table.
	 */
	partitionLock = FUNC5(locallock->hashcode);

	FUNC3(partitionLock, LW_SHARED);

	/*
	 * We don't need to re-find the lock or proclock, since we kept their
	 * addresses in the locallock table, and they couldn't have been removed
	 * while we were holding a lock on them.
	 */
	lock = locallock->lock;
	FUNC2("LockHasWaiters: found", lock, lockmode);
	proclock = locallock->proclock;
	FUNC7("LockHasWaiters: found", proclock);

	/*
	 * Double-check that we are actually holding a lock of the type we want to
	 * release.
	 */
	if (!(proclock->holdMask & FUNC0(lockmode)))
	{
		FUNC7("LockHasWaiters: WRONGTYPE", proclock);
		FUNC4(partitionLock);
		FUNC9(WARNING, "you don't own a lock of type %s",
			 lockMethodTable->lockModeNames[lockmode]);
		FUNC8(locallock);
		return false;
	}

	/*
	 * Do the checking.
	 */
	if ((lockMethodTable->conflictTab[lockmode] & lock->waitMask) != 0)
		hasWaiters = true;

	FUNC4(partitionLock);

	return hasWaiters;
}
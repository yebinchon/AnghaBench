#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_24__ {scalar_t__* fpRelId; int /*<<< orphan*/  backendLock; } ;
struct TYPE_22__ {scalar_t__ locktag_field2; } ;
struct TYPE_18__ {size_t mode; TYPE_5__ lock; } ;
struct TYPE_23__ {size_t hashcode; TYPE_1__ tag; } ;
struct TYPE_19__ {int /*<<< orphan*/  myLock; } ;
struct TYPE_21__ {TYPE_2__ tag; } ;
struct TYPE_20__ {TYPE_8__* myProc; int /*<<< orphan*/ * myLock; } ;
typedef  TYPE_3__ PROCLOCKTAG ;
typedef  TYPE_4__ PROCLOCK ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  LockMethod ;
typedef  int /*<<< orphan*/  LWLock ;
typedef  TYPE_5__ LOCKTAG ;
typedef  int /*<<< orphan*/  LOCK ;
typedef  TYPE_6__ LOCALLOCK ;

/* Variables and functions */
 size_t DEFAULT_LOCKMETHOD ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,size_t,size_t) ; 
 scalar_t__ FUNC2 (TYPE_8__*,size_t) ; 
 size_t FP_LOCK_SLOTS_PER_BACKEND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/ * FUNC6 (size_t) ; 
 int /*<<< orphan*/  LockMethodLockHash ; 
 int /*<<< orphan*/  LockMethodProcLockHash ; 
 int /*<<< orphan*/ * LockMethods ; 
 TYPE_8__* MyProc ; 
 size_t FUNC7 (TYPE_3__*,size_t) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ,TYPE_8__*,TYPE_5__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PROCLOCK *
FUNC15(LOCALLOCK *locallock)
{
	LockMethod	lockMethodTable = LockMethods[DEFAULT_LOCKMETHOD];
	LOCKTAG    *locktag = &locallock->tag.lock;
	PROCLOCK   *proclock = NULL;
	LWLock	   *partitionLock = FUNC6(locallock->hashcode);
	Oid			relid = locktag->locktag_field2;
	uint32		f;

	FUNC4(&MyProc->backendLock, LW_EXCLUSIVE);

	for (f = 0; f < FP_LOCK_SLOTS_PER_BACKEND; f++)
	{
		uint32		lockmode;

		/* Look for an allocated slot matching the given relid. */
		if (relid != MyProc->fpRelId[f] || FUNC2(MyProc, f) == 0)
			continue;

		/* If we don't have a lock of the given mode, forget it! */
		lockmode = locallock->tag.mode;
		if (!FUNC0(MyProc, f, lockmode))
			break;

		/* Find or create lock object. */
		FUNC4(partitionLock, LW_EXCLUSIVE);

		proclock = FUNC8(lockMethodTable, MyProc, locktag,
									locallock->hashcode, lockmode);
		if (!proclock)
		{
			FUNC5(partitionLock);
			FUNC5(&MyProc->backendLock);
			FUNC10(ERROR,
					(FUNC11(ERRCODE_OUT_OF_MEMORY),
					 FUNC13("out of shared memory"),
					 FUNC12("You might need to increase max_locks_per_transaction.")));
		}
		FUNC3(proclock->tag.myLock, proclock, lockmode);
		FUNC1(MyProc, f, lockmode);

		FUNC5(partitionLock);

		/* No need to examine remaining slots. */
		break;
	}

	FUNC5(&MyProc->backendLock);

	/* Lock may have already been transferred by some other backend. */
	if (proclock == NULL)
	{
		LOCK	   *lock;
		PROCLOCKTAG proclocktag;
		uint32		proclock_hashcode;

		FUNC4(partitionLock, LW_SHARED);

		lock = (LOCK *) FUNC14(LockMethodLockHash,
													(void *) locktag,
													locallock->hashcode,
													HASH_FIND,
													NULL);
		if (!lock)
			FUNC9(ERROR, "failed to re-find shared lock object");

		proclocktag.myLock = lock;
		proclocktag.myProc = MyProc;

		proclock_hashcode = FUNC7(&proclocktag, locallock->hashcode);
		proclock = (PROCLOCK *)
			FUNC14(LockMethodProcLockHash,
										(void *) &proclocktag,
										proclock_hashcode,
										HASH_FIND,
										NULL);
		if (!proclock)
			FUNC9(ERROR, "failed to re-find shared proclock object");
		FUNC5(partitionLock);
	}

	return proclock;
}
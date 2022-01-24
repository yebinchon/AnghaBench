#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_13__ {scalar_t__ backendId; scalar_t__ localTransactionId; } ;
typedef  TYPE_2__ VirtualTransactionId ;
struct TYPE_15__ {scalar_t__ backendId; scalar_t__ fpLocalTransactionId; int fpVXIDLock; int /*<<< orphan*/  backendLock; } ;
struct TYPE_12__ {int /*<<< orphan*/  myLock; } ;
struct TYPE_14__ {TYPE_1__ tag; } ;
typedef  TYPE_3__ PROCLOCK ;
typedef  TYPE_4__ PGPROC ;
typedef  int /*<<< orphan*/  LWLock ;
typedef  int /*<<< orphan*/  LOCKTAG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (scalar_t__) ; 
 size_t DEFAULT_LOCKMETHOD ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * LockMethods ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareLock ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

bool
FUNC16(VirtualTransactionId vxid, bool wait)
{
	LOCKTAG		tag;
	PGPROC	   *proc;

	FUNC0(FUNC11(vxid));

	FUNC9(tag, vxid);

	/*
	 * If a lock table entry must be made, this is the PGPROC on whose behalf
	 * it must be done.  Note that the transaction might end or the PGPROC
	 * might be reassigned to a new backend before we get around to examining
	 * it, but it doesn't matter.  If we find upon examination that the
	 * relevant lxid is no longer running here, that's enough to prove that
	 * it's no longer running anywhere.
	 */
	proc = FUNC1(vxid.backendId);
	if (proc == NULL)
		return true;

	/*
	 * We must acquire this lock before checking the backendId and lxid
	 * against the ones we're waiting for.  The target backend will only set
	 * or clear lxid while holding this lock.
	 */
	FUNC3(&proc->backendLock, LW_EXCLUSIVE);

	/* If the transaction has ended, our work here is done. */
	if (proc->backendId != vxid.backendId
		|| proc->fpLocalTransactionId != vxid.localTransactionId)
	{
		FUNC4(&proc->backendLock);
		return true;
	}

	/*
	 * If we aren't asked to wait, there's no need to set up a lock table
	 * entry.  The transaction is still in progress, so just return false.
	 */
	if (!wait)
	{
		FUNC4(&proc->backendLock);
		return false;
	}

	/*
	 * OK, we're going to need to sleep on the VXID.  But first, we must set
	 * up the primary lock table entry, if needed (ie, convert the proc's
	 * fast-path lock on its VXID to a regular lock).
	 */
	if (proc->fpVXIDLock)
	{
		PROCLOCK   *proclock;
		uint32		hashcode;
		LWLock	   *partitionLock;

		hashcode = FUNC8(&tag);

		partitionLock = FUNC6(hashcode);
		FUNC3(partitionLock, LW_EXCLUSIVE);

		proclock = FUNC10(LockMethods[DEFAULT_LOCKMETHOD], proc,
									&tag, hashcode, ExclusiveLock);
		if (!proclock)
		{
			FUNC4(partitionLock);
			FUNC4(&proc->backendLock);
			FUNC12(ERROR,
					(FUNC13(ERRCODE_OUT_OF_MEMORY),
					 FUNC15("out of shared memory"),
					 FUNC14("You might need to increase max_locks_per_transaction.")));
		}
		FUNC2(proclock->tag.myLock, proclock, ExclusiveLock);

		FUNC4(partitionLock);

		proc->fpVXIDLock = false;
	}

	/* Done with proc->fpLockBits */
	FUNC4(&proc->backendLock);

	/* Time to wait. */
	(void) FUNC5(&tag, ShareLock, false, false);

	FUNC7(&tag, ShareLock, false);
	return true;
}
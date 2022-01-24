#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  localTransactionId; int /*<<< orphan*/  backendId; } ;
typedef  TYPE_1__ VirtualTransactionId ;
struct TYPE_6__ {scalar_t__ backendId; int fpVXIDLock; int /*<<< orphan*/  backendLock; int /*<<< orphan*/  fpLocalTransactionId; } ;
typedef  int /*<<< orphan*/  LocalTransactionId ;
typedef  int /*<<< orphan*/  LOCKTAG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t DEFAULT_LOCKMETHOD ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 scalar_t__ InvalidBackendId ; 
 int /*<<< orphan*/  InvalidLocalTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * LockMethods ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MyBackendId ; 
 TYPE_3__* MyProc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__) ; 

void
FUNC6(void)
{
	bool		fastpath;
	LocalTransactionId lxid;

	FUNC0(MyProc->backendId != InvalidBackendId);

	/*
	 * Clean up shared memory state.
	 */
	FUNC1(&MyProc->backendLock, LW_EXCLUSIVE);

	fastpath = MyProc->fpVXIDLock;
	lxid = MyProc->fpLocalTransactionId;
	MyProc->fpVXIDLock = false;
	MyProc->fpLocalTransactionId = InvalidLocalTransactionId;

	FUNC2(&MyProc->backendLock);

	/*
	 * If fpVXIDLock has been cleared without touching fpLocalTransactionId,
	 * that means someone transferred the lock to the main lock table.
	 */
	if (!fastpath && FUNC3(lxid))
	{
		VirtualTransactionId vxid;
		LOCKTAG		locktag;

		vxid.backendId = MyBackendId;
		vxid.localTransactionId = lxid;
		FUNC5(locktag, vxid);

		FUNC4(LockMethods[DEFAULT_LOCKMETHOD], MyProc,
							 &locktag, ExclusiveLock, false);
	}
}
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
typedef  int /*<<< orphan*/  TransactionId ;
typedef  void* MultiXactId ;
typedef  size_t BackendId ;

/* Variables and functions */
 void* InvalidMultiXactId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  MXactCache ; 
 scalar_t__ MXactCacheMembers ; 
 int /*<<< orphan*/ * MXactContext ; 
 int /*<<< orphan*/  MultiXactGenLock ; 
 scalar_t__ FUNC2 (void*) ; 
 size_t MyBackendId ; 
 void** OldestMemberMXactId ; 
 void** OldestVisibleMXactId ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(TransactionId xid)
{
	MultiXactId myOldestMember;

	/*
	 * Transfer our OldestMemberMXactId value to the slot reserved for the
	 * prepared transaction.
	 */
	myOldestMember = OldestMemberMXactId[MyBackendId];
	if (FUNC2(myOldestMember))
	{
		BackendId	dummyBackendId = FUNC3(xid, false);

		/*
		 * Even though storing MultiXactId is atomic, acquire lock to make
		 * sure others see both changes, not just the reset of the slot of the
		 * current backend. Using a volatile pointer might suffice, but this
		 * isn't a hot spot.
		 */
		FUNC0(MultiXactGenLock, LW_EXCLUSIVE);

		OldestMemberMXactId[dummyBackendId] = myOldestMember;
		OldestMemberMXactId[MyBackendId] = InvalidMultiXactId;

		FUNC1(MultiXactGenLock);
	}

	/*
	 * We don't need to transfer OldestVisibleMXactId value, because the
	 * transaction is not going to be looking at any more multixacts once it's
	 * prepared.
	 *
	 * We assume that storing a MultiXactId is atomic and so we need not take
	 * MultiXactGenLock to do this.
	 */
	OldestVisibleMXactId[MyBackendId] = InvalidMultiXactId;

	/*
	 * Discard the local MultiXactId cache like in AtEOX_MultiXact
	 */
	MXactContext = NULL;
	FUNC4(&MXactCache);
	MXactCacheMembers = 0;
}
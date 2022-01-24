#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* TransactionId ;
struct TYPE_4__ {scalar_t__ status; void* xid; } ;
typedef  scalar_t__ MultiXactStatus ;
typedef  TYPE_1__ MultiXactMember ;
typedef  int /*<<< orphan*/  MultiXactId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 size_t MyBackendId ; 
 int /*<<< orphan*/ * OldestMemberMXactId ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 

MultiXactId
FUNC8(TransactionId xid1, MultiXactStatus status1,
				  TransactionId xid2, MultiXactStatus status2)
{
	MultiXactId newMulti;
	MultiXactMember members[2];

	FUNC1(FUNC5(xid1));
	FUNC1(FUNC5(xid2));

	FUNC0(!FUNC4(xid1, xid2) || (status1 != status2));

	/* MultiXactIdSetOldestMember() must have been called already. */
	FUNC0(FUNC3(OldestMemberMXactId[MyBackendId]));

	/*
	 * Note: unlike MultiXactIdExpand, we don't bother to check that both XIDs
	 * are still running.  In typical usage, xid2 will be our own XID and the
	 * caller just did a check on xid1, so it'd be wasted effort.
	 */

	members[0].xid = xid1;
	members[0].status = status1;
	members[1].xid = xid2;
	members[1].status = status2;

	newMulti = FUNC2(2, members);

	FUNC6(DEBUG2, "Create: %s",
				FUNC7(newMulti, 2, members));

	return newMulti;
}
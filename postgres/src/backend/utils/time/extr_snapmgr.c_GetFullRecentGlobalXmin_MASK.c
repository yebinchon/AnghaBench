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
typedef  scalar_t__ uint32 ;
typedef  scalar_t__ TransactionId ;
typedef  int /*<<< orphan*/  FullTransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ RecentGlobalXmin ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

FullTransactionId
FUNC6(void)
{
	FullTransactionId nextxid_full;
	uint32		nextxid_epoch;
	TransactionId nextxid_xid;
	uint32		epoch;

	FUNC0(FUNC4(RecentGlobalXmin));

	/*
	 * Compute the epoch from the next XID's epoch. This relies on the fact
	 * that RecentGlobalXmin must be within the 2 billion XID horizon from the
	 * next XID.
	 */
	nextxid_full = FUNC3();
	nextxid_epoch = FUNC1(nextxid_full);
	nextxid_xid = FUNC5(nextxid_full);

	if (RecentGlobalXmin > nextxid_xid)
		epoch = nextxid_epoch - 1;
	else
		epoch = nextxid_epoch;

	return FUNC2(epoch, RecentGlobalXmin);
}
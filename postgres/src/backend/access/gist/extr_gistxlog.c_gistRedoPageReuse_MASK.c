#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
struct TYPE_2__ {int /*<<< orphan*/  node; int /*<<< orphan*/  latestRemovedFullXid; } ;
typedef  TYPE_1__ gistxlogPageReuse ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  FullTransactionId ;

/* Variables and functions */
 scalar_t__ InHotStandby ; 
 int MaxTransactionId ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(XLogReaderState *record)
{
	gistxlogPageReuse *xlrec = (gistxlogPageReuse *) FUNC3(record);

	/*
	 * PAGE_REUSE records exist to provide a conflict point when we reuse
	 * pages in the index via the FSM.  That's all they do though.
	 *
	 * latestRemovedXid was the page's deleteXid.  The deleteXid <
	 * RecentGlobalXmin test in gistPageRecyclable() conceptually mirrors the
	 * pgxact->xmin > limitXmin test in GetConflictingVirtualXIDs().
	 * Consequently, one XID value achieves the same exclusion effect on
	 * master and standby.
	 */
	if (InHotStandby)
	{
		FullTransactionId latestRemovedFullXid = xlrec->latestRemovedFullXid;
		FullTransactionId nextFullXid = FUNC0();
		uint64		diff;

		/*
		 * ResolveRecoveryConflictWithSnapshot operates on 32-bit
		 * TransactionIds, so truncate the logged FullTransactionId. If the
		 * logged value is very old, so that XID wrap-around already happened
		 * on it, there can't be any snapshots that still see it.
		 */
		nextFullXid = FUNC0();
		diff = FUNC2(nextFullXid) -
			FUNC2(latestRemovedFullXid);
		if (diff < MaxTransactionId / 2)
		{
			TransactionId latestRemovedXid;

			latestRemovedXid = FUNC4(latestRemovedFullXid);
			FUNC1(latestRemovedXid,
												xlrec->node);
		}
	}
}
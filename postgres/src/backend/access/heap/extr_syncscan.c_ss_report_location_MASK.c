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
struct TYPE_4__ {int /*<<< orphan*/  rd_node; } ;
typedef  TYPE_1__* Relation ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int SYNC_SCAN_REPORT_INTERVAL ; 
 int /*<<< orphan*/  SyncScanLock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ trace_syncscan ; 

void
FUNC5(Relation rel, BlockNumber location)
{
#ifdef TRACE_SYNCSCAN
	if (trace_syncscan)
	{
		if ((location % 1024) == 0)
			elog(LOG,
				 "SYNC_SCAN: scanning \"%s\" at %u",
				 RelationGetRelationName(rel), location);
	}
#endif

	/*
	 * To reduce lock contention, only report scan progress every N pages. For
	 * the same reason, don't block if the lock isn't immediately available.
	 * Missing a few updates isn't critical, it just means that a new scan
	 * that wants to join the pack will start a little bit behind the head of
	 * the scan.  Hopefully the pages are still in OS cache and the scan
	 * catches up quickly.
	 */
	if ((location % SYNC_SCAN_REPORT_INTERVAL) == 0)
	{
		if (FUNC0(SyncScanLock, LW_EXCLUSIVE))
		{
			(void) FUNC4(rel->rd_node, location, true);
			FUNC1(SyncScanLock);
		}
#ifdef TRACE_SYNCSCAN
		else if (trace_syncscan)
			elog(LOG,
				 "SYNC_SCAN: missed update for \"%s\" at %u",
				 RelationGetRelationName(rel), location);
#endif
	}
}
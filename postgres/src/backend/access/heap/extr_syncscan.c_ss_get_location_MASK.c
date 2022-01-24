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
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  SyncScanLock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ trace_syncscan ; 

BlockNumber
FUNC5(Relation rel, BlockNumber relnblocks)
{
	BlockNumber startloc;

	FUNC0(SyncScanLock, LW_EXCLUSIVE);
	startloc = FUNC4(rel->rd_node, 0, false);
	FUNC1(SyncScanLock);

	/*
	 * If the location is not a valid block number for this scan, start at 0.
	 *
	 * This can happen if for instance a VACUUM truncated the table since the
	 * location was saved.
	 */
	if (startloc >= relnblocks)
		startloc = 0;

#ifdef TRACE_SYNCSCAN
	if (trace_syncscan)
		elog(LOG,
			 "SYNC_SCAN: start \"%s\" (size %u) at %u",
			 RelationGetRelationName(rel), relnblocks, startloc);
#endif

	return startloc;
}
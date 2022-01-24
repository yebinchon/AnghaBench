#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VirtualTransactionId ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_3__ {int /*<<< orphan*/  dbNode; } ;
typedef  TYPE_1__ RelFileNode ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCSIG_RECOVERY_CONFLICT_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(TransactionId latestRemovedXid, RelFileNode node)
{
	VirtualTransactionId *backends;

	/*
	 * If we get passed InvalidTransactionId then we are a little surprised,
	 * but it is theoretically possible in normal running. It also happens
	 * when replaying already applied WAL records after a standby crash or
	 * restart, or when replaying an XLOG_HEAP2_VISIBLE record that marks as
	 * frozen a page which was already all-visible.  If latestRemovedXid is
	 * invalid then there is no conflict. That rule applies across all record
	 * types that suffer from this conflict.
	 */
	if (!FUNC2(latestRemovedXid))
		return;

	backends = FUNC0(latestRemovedXid,
										 node.dbNode);

	FUNC1(backends,
										   PROCSIG_RECOVERY_CONFLICT_SNAPSHOT);
}
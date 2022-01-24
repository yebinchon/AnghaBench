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
typedef  scalar_t__ XidStatus ;
typedef  int /*<<< orphan*/  TransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRANSACTION_STATUS_ABORTED ; 
 scalar_t__ TRANSACTION_STATUS_SUB_COMMITTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TransactionXmin ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

bool							/* true if given transaction aborted */
FUNC5(TransactionId transactionId)
{
	XidStatus	xidstatus;

	xidstatus = FUNC3(transactionId);

	/*
	 * If it's marked aborted, it's aborted.
	 */
	if (xidstatus == TRANSACTION_STATUS_ABORTED)
		return true;

	/*
	 * If it's marked subcommitted, we have to check the parent recursively.
	 * However, if it's older than TransactionXmin, we can't look at
	 * pg_subtrans; instead assume that the parent crashed without cleaning up
	 * its children.
	 */
	if (xidstatus == TRANSACTION_STATUS_SUB_COMMITTED)
	{
		TransactionId parentXid;

		if (FUNC2(transactionId, TransactionXmin))
			return true;
		parentXid = FUNC0(transactionId);
		if (!FUNC1(parentXid))
		{
			/* see notes in TransactionIdDidCommit */
			FUNC4(WARNING, "no pg_subtrans entry for subcommitted XID %u",
				 transactionId);
			return true;
		}
		return FUNC5(parentXid);
	}

	/*
	 * It's not aborted.
	 */
	return false;
}
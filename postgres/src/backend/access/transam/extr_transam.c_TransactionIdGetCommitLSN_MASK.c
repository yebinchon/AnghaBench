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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cachedCommitLSN ; 
 int /*<<< orphan*/  cachedFetchXid ; 

XLogRecPtr
FUNC3(TransactionId xid)
{
	XLogRecPtr	result;

	/*
	 * Currently, all uses of this function are for xids that were just
	 * reported to be committed by TransactionLogFetch, so we expect that
	 * checking TransactionLogFetch's cache will usually succeed and avoid an
	 * extra trip to shared memory.
	 */
	if (FUNC0(xid, cachedFetchXid))
		return cachedCommitLSN;

	/* Special XIDs are always known committed */
	if (!FUNC2(xid))
		return InvalidXLogRecPtr;

	/*
	 * Get the transaction status.
	 */
	(void) FUNC1(xid, &result);

	return result;
}
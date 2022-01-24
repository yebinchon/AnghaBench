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
typedef  int /*<<< orphan*/  RelFileNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MyXactFlags ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(TransactionId xid,
							   int nchildren,
							   TransactionId *children,
							   int nrels,
							   RelFileNode *rels,
							   const char *gid)
{
	XLogRecPtr	recptr;

	/*
	 * Catch the scenario where we aborted partway through
	 * RecordTransactionCommitPrepared ...
	 */
	if (FUNC5(xid))
		FUNC8(PANIC, "cannot abort transaction %u, it was already committed",
			 xid);

	FUNC2();

	/*
	 * Emit the XLOG commit record. Note that we mark 2PC aborts as
	 * potentially having AccessExclusiveLocks since we don't know whether or
	 * not they do.
	 */
	recptr = FUNC7(FUNC1(),
								nchildren, children,
								nrels, rels,
								MyXactFlags | XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK,
								xid, gid);

	/* Always flush, since we're about to remove the 2PC state file */
	FUNC6(recptr);

	/*
	 * Mark the transaction aborted in clog.  This is not absolutely necessary
	 * but we may as well do it while we are here.
	 */
	FUNC4(xid, nchildren, children);

	FUNC0();

	/*
	 * Wait for synchronous replication, if required.
	 *
	 * Note that at this stage we have marked clog, but still show as running
	 * in the procarray and continue to hold locks.
	 */
	FUNC3(recptr, false);
}
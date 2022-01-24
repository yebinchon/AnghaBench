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
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_2__ {int /*<<< orphan*/  lastOverflowedXid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ STANDBY_INITIALIZED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* procArray ; 
 scalar_t__ standbyState ; 

void
FUNC8(TransactionId topxid,
							int nsubxids, TransactionId *subxids)
{
	TransactionId max_xid;
	int			i;

	FUNC0(standbyState >= STANDBY_INITIALIZED);

	max_xid = FUNC6(topxid, nsubxids, subxids);

	/*
	 * Mark all the subtransactions as observed.
	 *
	 * NOTE: This will fail if the subxid contains too many previously
	 * unobserved xids to fit into known-assigned-xids. That shouldn't happen
	 * as the code stands, because xid-assignment records should never contain
	 * more than PGPROC_MAX_CACHED_SUBXIDS entries.
	 */
	FUNC4(max_xid);

	/*
	 * Notice that we update pg_subtrans with the top-level xid, rather than
	 * the parent xid. This is a difference between normal processing and
	 * recovery, yet is still correct in all cases. The reason is that
	 * subtransaction commit is not marked in clog until commit processing, so
	 * all aborted subtransactions have already been clearly marked in clog.
	 * As a result we are able to refer directly to the top-level
	 * transaction's state rather than skipping through all the intermediate
	 * states in the subtransaction tree. This should be the first time we
	 * have attempted to SubTransSetParent().
	 */
	for (i = 0; i < nsubxids; i++)
		FUNC5(subxids[i], topxid);

	/* KnownAssignedXids isn't maintained yet, so we're done for now */
	if (standbyState == STANDBY_INITIALIZED)
		return;

	/*
	 * Uses same locking as transaction commit
	 */
	FUNC2(ProcArrayLock, LW_EXCLUSIVE);

	/*
	 * Remove subxids from known-assigned-xacts.
	 */
	FUNC1(InvalidTransactionId, nsubxids, subxids);

	/*
	 * Advance lastOverflowedXid to be at least the last of these subxids.
	 */
	if (FUNC7(procArray->lastOverflowedXid, max_xid))
		procArray->lastOverflowedXid = max_xid;

	FUNC3(ProcArrayLock);
}
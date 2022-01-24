#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* TransactionId ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_6__ {void* newestCommitTsXid; } ;
struct TYPE_4__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  time; } ;
struct TYPE_5__ {TYPE_1__ dataLastCommit; void* xidLastCommit; int /*<<< orphan*/  commitTsActive; } ;
typedef  int /*<<< orphan*/  RepOriginId ;

/* Variables and functions */
 int /*<<< orphan*/  CommitTsLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (void*,int,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* ShmemVariableCache ; 
 scalar_t__ FUNC3 (void*,void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* commitTsShared ; 

void
FUNC6(TransactionId xid, int nsubxids,
							   TransactionId *subxids, TimestampTz timestamp,
							   RepOriginId nodeid, bool write_xlog)
{
	int			i;
	TransactionId headxid;
	TransactionId newestXact;

	/*
	 * No-op if the module is not active.
	 *
	 * An unlocked read here is fine, because in a standby (the only place
	 * where the flag can change in flight) this routine is only called by the
	 * recovery process, which is also the only process which can change the
	 * flag.
	 */
	if (!commitTsShared->commitTsActive)
		return;

	/*
	 * Comply with the WAL-before-data rule: if caller specified it wants this
	 * value to be recorded in WAL, do so before touching the data.
	 */
	if (write_xlog)
		FUNC5(xid, nsubxids, subxids, timestamp, nodeid);

	/*
	 * Figure out the latest Xid in this batch: either the last subxid if
	 * there's any, otherwise the parent xid.
	 */
	if (nsubxids > 0)
		newestXact = subxids[nsubxids - 1];
	else
		newestXact = xid;

	/*
	 * We split the xids to set the timestamp to in groups belonging to the
	 * same SLRU page; the first element in each such set is its head.  The
	 * first group has the main XID as the head; subsequent sets use the first
	 * subxid not on the previous page as head.  This way, we only have to
	 * lock/modify each SLRU page once.
	 */
	for (i = 0, headxid = xid;;)
	{
		int			pageno = FUNC4(headxid);
		int			j;

		for (j = i; j < nsubxids; j++)
		{
			if (FUNC4(subxids[j]) != pageno)
				break;
		}
		/* subxids[i..j] are on the same page as the head */

		FUNC2(headxid, j - i, subxids + i, timestamp, nodeid,
							 pageno);

		/* if we wrote out all subxids, we're done. */
		if (j + 1 >= nsubxids)
			break;

		/*
		 * Set the new head and skip over it, as well as over the subxids we
		 * just wrote.
		 */
		headxid = subxids[j];
		i += j - i + 1;
	}

	/* update the cached value in shared memory */
	FUNC0(CommitTsLock, LW_EXCLUSIVE);
	commitTsShared->xidLastCommit = xid;
	commitTsShared->dataLastCommit.time = timestamp;
	commitTsShared->dataLastCommit.nodeid = nodeid;

	/* and move forwards our endpoint, if needed */
	if (FUNC3(ShmemVariableCache->newestCommitTsXid, newestXact))
		ShmemVariableCache->newestCommitTsXid = newestXact;
	FUNC1(CommitTsLock);
}
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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TRANSACTION_STATUS_ABORTED ; 
 scalar_t__ TRANSACTION_STATUS_COMMITTED ; 
 scalar_t__ TRANSACTION_STATUS_SUB_COMMITTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC4(TransactionId xid, int nsubxids,
						   TransactionId *subxids, XidStatus status, XLogRecPtr lsn)
{
	int			pageno = FUNC2(xid);	/* get page of parent */
	int			i;

	FUNC0(status == TRANSACTION_STATUS_COMMITTED ||
		   status == TRANSACTION_STATUS_ABORTED);

	/*
	 * See how many subxids, if any, are on the same page as the parent, if
	 * any.
	 */
	for (i = 0; i < nsubxids; i++)
	{
		if (FUNC2(subxids[i]) != pageno)
			break;
	}

	/*
	 * Do all items fit on a single page?
	 */
	if (i == nsubxids)
	{
		/*
		 * Set the parent and all subtransactions in a single call
		 */
		FUNC1(xid, nsubxids, subxids, status, lsn,
								   pageno, true);
	}
	else
	{
		int			nsubxids_on_first_page = i;

		/*
		 * If this is a commit then we care about doing this correctly (i.e.
		 * using the subcommitted intermediate status).  By here, we know
		 * we're updating more than one page of clog, so we must mark entries
		 * that are *not* on the first page so that they show as subcommitted
		 * before we then return to update the status to fully committed.
		 *
		 * To avoid touching the first page twice, skip marking subcommitted
		 * for the subxids on that first page.
		 */
		if (status == TRANSACTION_STATUS_COMMITTED)
			FUNC3(nsubxids - nsubxids_on_first_page,
								subxids + nsubxids_on_first_page,
								TRANSACTION_STATUS_SUB_COMMITTED, lsn);

		/*
		 * Now set the parent and subtransactions on same page as the parent,
		 * if any
		 */
		pageno = FUNC2(xid);
		FUNC1(xid, nsubxids_on_first_page, subxids, status,
								   lsn, pageno, false);

		/*
		 * Now work through the rest of the subxids one clog page at a time,
		 * starting from the second page onwards, like we did above.
		 */
		FUNC3(nsubxids - nsubxids_on_first_page,
							subxids + nsubxids_on_first_page,
							status, lsn);
	}
}
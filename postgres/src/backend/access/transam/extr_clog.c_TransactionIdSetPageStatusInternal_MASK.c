#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XidStatus ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {scalar_t__* page_number; int* page_dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLogControlLock ; 
 TYPE_2__* ClogCtl ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRANSACTION_STATUS_ABORTED ; 
 scalar_t__ TRANSACTION_STATUS_COMMITTED ; 
 scalar_t__ TRANSACTION_STATUS_SUB_COMMITTED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(TransactionId xid, int nsubxids,
								   TransactionId *subxids, XidStatus status,
								   XLogRecPtr lsn, int pageno)
{
	int			slotno;
	int			i;

	FUNC0(status == TRANSACTION_STATUS_COMMITTED ||
		   status == TRANSACTION_STATUS_ABORTED ||
		   (status == TRANSACTION_STATUS_SUB_COMMITTED && !FUNC3(xid)));
	FUNC0(FUNC1(CLogControlLock, LW_EXCLUSIVE));

	/*
	 * If we're doing an async commit (ie, lsn is valid), then we must wait
	 * for any active write on the page slot to complete.  Otherwise our
	 * update could reach disk in that write, which will not do since we
	 * mustn't let it reach disk until we've done the appropriate WAL flush.
	 * But when lsn is invalid, it's OK to scribble on a page while it is
	 * write-busy, since we don't care if the update reaches disk sooner than
	 * we think.
	 */
	slotno = FUNC2(ClogCtl, pageno, FUNC6(lsn), xid);

	/*
	 * Set the main transaction id, if any.
	 *
	 * If we update more than one xid on this page while it is being written
	 * out, we might find that some of the bits go to disk and others don't.
	 * If we are updating commits on the page with the top-level xid that
	 * could break atomicity, so we subcommit the subxids first before we mark
	 * the top-level commit.
	 */
	if (FUNC3(xid))
	{
		/* Subtransactions first, if needed ... */
		if (status == TRANSACTION_STATUS_COMMITTED)
		{
			for (i = 0; i < nsubxids; i++)
			{
				FUNC0(ClogCtl->shared->page_number[slotno] == FUNC5(subxids[i]));
				FUNC4(subxids[i],
										  TRANSACTION_STATUS_SUB_COMMITTED,
										  lsn, slotno);
			}
		}

		/* ... then the main transaction */
		FUNC4(xid, status, lsn, slotno);
	}

	/* Set the subtransactions */
	for (i = 0; i < nsubxids; i++)
	{
		FUNC0(ClogCtl->shared->page_number[slotno] == FUNC5(subxids[i]));
		FUNC4(subxids[i], status, lsn, slotno);
	}

	ClogCtl->shared->page_dirty[slotno] = true;
}
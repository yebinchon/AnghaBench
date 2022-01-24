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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {scalar_t__ pd_prune_xid; } ;
struct TYPE_4__ {scalar_t__ new_prune_xid; int nredirected; int ndead; int nunused; int /*<<< orphan*/  latestRemovedXid; int /*<<< orphan*/  nowunused; int /*<<< orphan*/  nowdead; int /*<<< orphan*/  redirected; scalar_t__* marked; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ PruneState ;
typedef  TYPE_2__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  size_t OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FirstOffsetNumber ; 
 scalar_t__ InvalidTransactionId ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,size_t) ; 
 size_t FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 

int
FUNC19(Relation relation, Buffer buffer, TransactionId OldestXmin,
				bool report_stats, TransactionId *latestRemovedXid)
{
	int			ndeleted = 0;
	Page		page = FUNC0(buffer);
	OffsetNumber offnum,
				maxoff;
	PruneState	prstate;

	/*
	 * Our strategy is to scan the page and make lists of items to change,
	 * then apply the changes within a critical section.  This keeps as much
	 * logic as possible out of the critical section, and also ensures that
	 * WAL replay will work the same as the normal case.
	 *
	 * First, initialize the new pd_prune_xid value to zero (indicating no
	 * prunable tuples).  If we find any tuples which may soon become
	 * prunable, we will save the lowest relevant XID in new_prune_xid. Also
	 * initialize the rest of our working state.
	 */
	prstate.new_prune_xid = InvalidTransactionId;
	prstate.latestRemovedXid = *latestRemovedXid;
	prstate.nredirected = prstate.ndead = prstate.nunused = 0;
	FUNC17(prstate.marked, 0, sizeof(prstate.marked));

	/* Scan the page */
	maxoff = FUNC9(page);
	for (offnum = FirstOffsetNumber;
		 offnum <= maxoff;
		 offnum = FUNC6(offnum))
	{
		ItemId		itemid;

		/* Ignore items already processed as part of an earlier chain */
		if (prstate.marked[offnum])
			continue;

		/* Nothing to do if slot is empty or already dead */
		itemid = FUNC8(page, offnum);
		if (!FUNC3(itemid) || FUNC2(itemid))
			continue;

		/* Process this item or chain of items */
		ndeleted += FUNC15(relation, buffer, offnum,
									 OldestXmin,
									 &prstate);
	}

	/* Any error while applying the changes is critical */
	FUNC13();

	/* Have we found any prunable items? */
	if (prstate.nredirected > 0 || prstate.ndead > 0 || prstate.nunused > 0)
	{
		/*
		 * Apply the planned item changes, then repair page fragmentation, and
		 * update the page's hint bit about whether it has free line pointers.
		 */
		FUNC14(buffer,
								prstate.redirected, prstate.nredirected,
								prstate.nowdead, prstate.ndead,
								prstate.nowunused, prstate.nunused);

		/*
		 * Update the page's pd_prune_xid field to either zero, or the lowest
		 * XID of any soon-prunable tuple.
		 */
		((PageHeader) page)->pd_prune_xid = prstate.new_prune_xid;

		/*
		 * Also clear the "page is full" flag, since there's no point in
		 * repeating the prune/defrag process until something else happens to
		 * the page.
		 */
		FUNC7(page);

		FUNC4(buffer);

		/*
		 * Emit a WAL XLOG_HEAP2_CLEAN record showing what we did
		 */
		if (FUNC12(relation))
		{
			XLogRecPtr	recptr;

			recptr = FUNC16(relation, buffer,
									prstate.redirected, prstate.nredirected,
									prstate.nowdead, prstate.ndead,
									prstate.nowunused, prstate.nunused,
									prstate.latestRemovedXid);

			FUNC11(FUNC0(buffer), recptr);
		}
	}
	else
	{
		/*
		 * If we didn't prune anything, but have found a new value for the
		 * pd_prune_xid field, update it and mark the buffer dirty. This is
		 * treated as a non-WAL-logged hint.
		 *
		 * Also clear the "page is full" flag if it is set, since there's no
		 * point in repeating the prune/defrag process until something else
		 * happens to the page.
		 */
		if (((PageHeader) page)->pd_prune_xid != prstate.new_prune_xid ||
			FUNC10(page))
		{
			((PageHeader) page)->pd_prune_xid = prstate.new_prune_xid;
			FUNC7(page);
			FUNC5(buffer, true);
		}
	}

	FUNC1();

	/*
	 * If requested, report the number of tuples reclaimed to pgstats. This is
	 * ndeleted minus ndead, because we don't want to count a now-DEAD root
	 * item as a deletion for this purpose.
	 */
	if (report_stats && ndeleted > prstate.ndead)
		FUNC18(relation, ndeleted - prstate.ndead);

	*latestRemovedXid = prstate.latestRemovedXid;

	/*
	 * XXX Should we update the FSM information of this page ?
	 *
	 * There are two schools of thought here. We may not want to update FSM
	 * information so that the page is not used for unrelated UPDATEs/INSERTs
	 * and any free space in this page will remain available for further
	 * UPDATEs in *this* page, thus improving chances for doing HOT updates.
	 *
	 * But for a large table and where a page does not receive further UPDATEs
	 * for a long time, we might waste this space by not updating the FSM
	 * information. The relation may get extended and fragmented further.
	 *
	 * One possibility is to leave "fillfactor" worth of space in this page
	 * and update FSM with the remaining space.
	 */

	return ndeleted;
}
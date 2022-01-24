#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_8__ {int includes_all_transactions; } ;
struct TYPE_9__ {scalar_t__ state; scalar_t__ start_decoding_at; scalar_t__ snapshot; int /*<<< orphan*/  reorder; int /*<<< orphan*/  xmax; TYPE_1__ committed; scalar_t__ building_full_snapshot; } ;
typedef  TYPE_2__ SnapBuild ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  DEBUG2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SNAPBUILD_BUILDING_SNAPSHOT ; 
 scalar_t__ SNAPBUILD_CONSISTENT ; 
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ; 
 scalar_t__ SNAPBUILD_START ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

void
FUNC16(SnapBuild *builder, XLogRecPtr lsn, TransactionId xid,
				   int nsubxacts, TransactionId *subxacts)
{
	int			nxact;

	bool		needs_snapshot = false;
	bool		needs_timetravel = false;
	bool		sub_needs_timetravel = false;

	TransactionId xmax = xid;

	/*
	 * Transactions preceding BUILDING_SNAPSHOT will neither be decoded, nor
	 * will they be part of a snapshot.  So we don't need to record anything.
	 */
	if (builder->state == SNAPBUILD_START ||
		(builder->state == SNAPBUILD_BUILDING_SNAPSHOT &&
		 FUNC14(xid, FUNC8(builder))))
	{
		/* ensure that only commits after this are getting replayed */
		if (builder->start_decoding_at <= lsn)
			builder->start_decoding_at = lsn + 1;
		return;
	}

	if (builder->state < SNAPBUILD_CONSISTENT)
	{
		/* ensure that only commits after this are getting replayed */
		if (builder->start_decoding_at <= lsn)
			builder->start_decoding_at = lsn + 1;

		/*
		 * If building an exportable snapshot, force xid to be tracked, even
		 * if the transaction didn't modify the catalog.
		 */
		if (builder->building_full_snapshot)
		{
			needs_timetravel = true;
		}
	}

	for (nxact = 0; nxact < nsubxacts; nxact++)
	{
		TransactionId subxid = subxacts[nxact];

		/*
		 * Add subtransaction to base snapshot if catalog modifying, we don't
		 * distinguish to toplevel transactions there.
		 */
		if (FUNC4(builder->reorder, subxid))
		{
			sub_needs_timetravel = true;
			needs_snapshot = true;

			FUNC15(DEBUG1, "found subtransaction %u:%u with catalog changes",
				 xid, subxid);

			FUNC5(builder, subxid);

			if (FUNC1(subxid, xmax))
				xmax = subxid;
		}

		/*
		 * If we're forcing timetravel we also need visibility information
		 * about subtransaction, so keep track of subtransaction's state, even
		 * if not catalog modifying.  Don't need to distribute a snapshot in
		 * that case.
		 */
		else if (needs_timetravel)
		{
			FUNC5(builder, subxid);
			if (FUNC1(subxid, xmax))
				xmax = subxid;
		}
	}

	/* if top-level modified catalog, it'll need a snapshot */
	if (FUNC4(builder->reorder, xid))
	{
		FUNC15(DEBUG2, "found top level transaction %u, with catalog changes",
			 xid);
		needs_snapshot = true;
		needs_timetravel = true;
		FUNC5(builder, xid);
	}
	else if (sub_needs_timetravel)
	{
		/* track toplevel txn as well, subxact alone isn't meaningful */
		FUNC5(builder, xid);
	}
	else if (needs_timetravel)
	{
		FUNC15(DEBUG2, "forced transaction %u to do timetravel", xid);

		FUNC5(builder, xid);
	}

	if (!needs_timetravel)
	{
		/* record that we cannot export a general snapshot anymore */
		builder->committed.includes_all_transactions = false;
	}

	FUNC0(!needs_snapshot || needs_timetravel);

	/*
	 * Adjust xmax of the snapshot builder, we only do that for committed,
	 * catalog modifying, transactions, everything else isn't interesting for
	 * us since we'll never look at the respective rows.
	 */
	if (needs_timetravel &&
		(!FUNC13(builder->xmax) ||
		 FUNC12(xmax, builder->xmax)))
	{
		builder->xmax = xmax;
		FUNC11(builder->xmax);
	}

	/* if there's any reason to build a historic snapshot, do so now */
	if (needs_snapshot)
	{
		/*
		 * If we haven't built a complete snapshot yet there's no need to hand
		 * it out, it wouldn't (and couldn't) be used anyway.
		 */
		if (builder->state < SNAPBUILD_FULL_SNAPSHOT)
			return;

		/*
		 * Decrease the snapshot builder's refcount of the old snapshot, note
		 * that it still will be used if it has been handed out to the
		 * reorderbuffer earlier.
		 */
		if (builder->snapshot)
			FUNC9(builder->snapshot);

		builder->snapshot = FUNC6(builder);

		/* we might need to execute invalidations, add snapshot */
		if (!FUNC3(builder->reorder, xid))
		{
			FUNC10(builder->snapshot);
			FUNC2(builder->reorder, xid, lsn,
										 builder->snapshot);
		}

		/* refcount of the snapshot builder for the new snapshot */
		FUNC10(builder->snapshot);

		/* add a new catalog snapshot to all currently running transactions */
		FUNC7(builder, lsn);
	}
}
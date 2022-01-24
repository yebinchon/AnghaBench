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
struct TYPE_8__ {int flags; int /*<<< orphan*/  cutoff_xid; } ;
typedef  TYPE_1__ xl_heap_visible ;
typedef  scalar_t__ XLogRedoAction ;
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_9__ {scalar_t__ EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BLCKSZ ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 scalar_t__ BLK_RESTORED ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ InHotStandby ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_ZERO_ON_ERROR ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int VISIBILITYMAP_VALID_BITS ; 
 scalar_t__ FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC21(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_heap_visible *xlrec = (xl_heap_visible *) FUNC17(record);
	Buffer		vmbuffer = InvalidBuffer;
	Buffer		buffer;
	Page		page;
	RelFileNode rnode;
	BlockNumber blkno;
	XLogRedoAction action;

	FUNC16(record, 1, &rnode, NULL, &blkno);

	/*
	 * If there are any Hot Standby transactions running that have an xmin
	 * horizon old enough that this page isn't all-visible for them, they
	 * might incorrectly decide that an index-only scan can skip a heap fetch.
	 *
	 * NB: It might be better to throw some kind of "soft" conflict here that
	 * forces any index-only scan that is in flight to perform heap fetches,
	 * rather than killing the transaction outright.
	 */
	if (InHotStandby)
		FUNC12(xlrec->cutoff_xid, rnode);

	/*
	 * Read the heap page, if it still exists. If the heap file has dropped or
	 * truncated later in recovery, we don't need to update the page, but we'd
	 * better still update the visibility map.
	 */
	action = FUNC14(record, 1, &buffer);
	if (action == BLK_NEEDS_REDO)
	{
		/*
		 * We don't bump the LSN of the heap page when setting the visibility
		 * map bit (unless checksums or wal_hint_bits is enabled, in which
		 * case we must), because that would generate an unworkable volume of
		 * full-page writes.  This exposes us to torn page hazards, but since
		 * we're not inspecting the existing page contents in any way, we
		 * don't care.
		 *
		 * However, all operations that clear the visibility map bit *do* bump
		 * the LSN, and those operations will only be replayed if the XLOG LSN
		 * follows the page LSN.  Thus, if the page LSN has advanced past our
		 * XLOG record's LSN, we mustn't mark the page all-visible, because
		 * the subsequent update won't be replayed to clear the flag.
		 */
		page = FUNC0(buffer);

		FUNC10(page);

		FUNC5(buffer);
	}
	else if (action == BLK_RESTORED)
	{
		/*
		 * If heap block was backed up, we already restored it and there's
		 * nothing more to do. (This can only happen with checksums or
		 * wal_log_hints enabled.)
		 */
	}

	if (FUNC1(buffer))
	{
		Size		space = FUNC6(FUNC0(buffer));

		FUNC13(buffer);

		/*
		 * Since FSM is not WAL-logged and only updated heuristically, it
		 * easily becomes stale in standbys.  If the standby is later promoted
		 * and runs VACUUM, it will skip updating individual free space
		 * figures for pages that became all-visible (or all-frozen, depending
		 * on the vacuum mode,) which is troublesome when FreeSpaceMapVacuum
		 * propagates too optimistic free space values to upper FSM layers;
		 * later inserters try to use such pages only to find out that they
		 * are unusable.  This can cause long stalls when there are many such
		 * pages.
		 *
		 * Forestall those problems by updating FSM's idea about a page that
		 * is becoming all-visible or all-frozen.
		 *
		 * Do this regardless of a full-page image being applied, since the
		 * FSM data is not in the page anyway.
		 */
		if (xlrec->flags & VISIBILITYMAP_VALID_BITS)
			FUNC18(rnode, blkno, space);
	}

	/*
	 * Even if we skipped the heap page update due to the LSN interlock, it's
	 * still safe to update the visibility map.  Any WAL record that clears
	 * the visibility map bit does so before checking the page LSN, so any
	 * bits that need to be cleared will still be cleared.
	 */
	if (FUNC15(record, 0, RBM_ZERO_ON_ERROR, false,
									  &vmbuffer) == BLK_NEEDS_REDO)
	{
		Page		vmpage = FUNC0(vmbuffer);
		Relation	reln;

		/* initialize the page if it was read as zeros */
		if (FUNC9(vmpage))
			FUNC8(vmpage, BLCKSZ, 0);

		/*
		 * XLogReadBufferForRedoExtended locked the buffer. But
		 * visibilitymap_set will handle locking itself.
		 */
		FUNC4(vmbuffer, BUFFER_LOCK_UNLOCK);

		reln = FUNC2(rnode);
		FUNC19(reln, blkno, &vmbuffer);

		/*
		 * Don't set the bit if replay has already passed this point.
		 *
		 * It might be safe to do this unconditionally; if replay has passed
		 * this point, we'll replay at least as far this time as we did
		 * before, and if this bit needs to be cleared, the record responsible
		 * for doing so should be again replayed, and clear it.  For right
		 * now, out of an abundance of conservatism, we use the same test here
		 * we did for the heap page.  If this results in a dropped bit, no
		 * real harm is done; and the next VACUUM will fix it.
		 */
		if (lsn > FUNC7(vmpage))
			FUNC20(reln, blkno, InvalidBuffer, lsn, vmbuffer,
							  xlrec->cutoff_xid, xlrec->flags);

		FUNC11(vmbuffer);
		FUNC3(reln);
	}
	else if (FUNC1(vmbuffer))
		FUNC13(vmbuffer);
}
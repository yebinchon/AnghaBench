#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ rightblk; int /*<<< orphan*/  leftblk; scalar_t__ topparent; scalar_t__ leafblk; int /*<<< orphan*/  poffset; } ;
typedef  TYPE_1__ xl_btree_mark_page_halfdead ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_15__ {scalar_t__ btpo_next; int /*<<< orphan*/  btpo_prev; int /*<<< orphan*/  btpo_flags; } ;
struct TYPE_14__ {int t_info; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  Item ;
typedef  TYPE_2__ IndexTupleData ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;
typedef  int /*<<< orphan*/  BTStack ;
typedef  TYPE_3__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTP_HALF_DEAD ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 scalar_t__ P_HIKEY ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_BTREE_ID ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  SizeOfBtreeMarkPageHalfDead ; 
 int /*<<< orphan*/  XLOG_BTREE_MARK_PAGE_HALFDEAD ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC39(Relation rel, Buffer leafbuf, BTStack stack)
{
	BlockNumber leafblkno;
	BlockNumber leafrightsib;
	BlockNumber target;
	BlockNumber rightsib;
	ItemId		itemid;
	Page		page;
	BTPageOpaque opaque;
	Buffer		topparent;
	OffsetNumber topoff;
	OffsetNumber nextoffset;
	IndexTuple	itup;
	IndexTupleData trunctuple;

	page = FUNC5(leafbuf);
	opaque = (BTPageOpaque) FUNC20(page);

	FUNC0(!FUNC16(opaque) && !FUNC15(opaque) && !FUNC12(opaque) &&
		   !FUNC13(opaque) && FUNC14(opaque) &&
		   FUNC11(opaque) > FUNC19(page));

	/*
	 * Save info about the leaf page.
	 */
	leafblkno = FUNC4(leafbuf);
	leafrightsib = opaque->btpo_next;

	/*
	 * Before attempting to lock the parent page, check that the right sibling
	 * is not in half-dead state.  A half-dead right sibling would have no
	 * downlink in the parent, which would be highly confusing later when we
	 * delete the downlink that follows the current page's downlink. (I
	 * believe the deletion would work correctly, but it would fail the
	 * cross-check we make that the following downlink points to the right
	 * sibling of the delete page.)
	 */
	if (FUNC32(rel, leafrightsib))
	{
		FUNC35(DEBUG1, "could not delete page %u because its right sibling %u is half-dead",
			 leafblkno, leafrightsib);
		return false;
	}

	/*
	 * We cannot delete a page that is the rightmost child of its immediate
	 * parent, unless it is the only child --- in which case the parent has to
	 * be deleted too, and the same condition applies recursively to it. We
	 * have to check this condition all the way up before trying to delete,
	 * and lock the final parent of the to-be-deleted subtree.
	 *
	 * However, we won't need to repeat the above _bt_is_page_halfdead() check
	 * for parent/ancestor pages because of the rightmost restriction. The
	 * leaf check will apply to a right "cousin" leaf page rather than a
	 * simple right sibling leaf page in cases where we actually go on to
	 * perform internal page deletion. The right cousin leaf page is
	 * representative of the left edge of the subtree to the right of the
	 * to-be-deleted subtree as a whole.  (Besides, internal pages are never
	 * marked half-dead, so it isn't even possible to directly assess if an
	 * internal page is part of some other to-be-deleted subtree.)
	 */
	rightsib = leafrightsib;
	target = leafblkno;
	if (!FUNC33(rel, leafblkno, stack,
								&topparent, &topoff, &target, &rightsib))
		return false;

	/*
	 * Check that the parent-page index items we're about to delete/overwrite
	 * contain what we expect.  This can fail if the index has become corrupt
	 * for some reason.  We want to throw any error before entering the
	 * critical section --- otherwise it'd be a PANIC.
	 *
	 * The test on the target item is just an Assert because
	 * _bt_lock_branch_parent should have guaranteed it has the expected
	 * contents.  The test on the next-child downlink is known to sometimes
	 * fail in the field, though.
	 */
	page = FUNC5(topparent);
	opaque = (BTPageOpaque) FUNC20(page);

#ifdef USE_ASSERT_CHECKING
	itemid = PageGetItemId(page, topoff);
	itup = (IndexTuple) PageGetItem(page, itemid);
	Assert(BTreeInnerTupleGetDownLink(itup) == target);
#endif

	nextoffset = FUNC10(topoff);
	itemid = FUNC18(page, nextoffset);
	itup = (IndexTuple) FUNC17(page, itemid);
	if (FUNC1(itup) != rightsib)
		FUNC36(ERROR,
					(FUNC37(ERRCODE_INDEX_CORRUPTED),
					 FUNC38("right sibling %u of block %u is not next child %u of block %u in index \"%s\"",
									 rightsib, target, FUNC1(itup),
					 FUNC4(topparent), FUNC25(rel))));

	/*
	 * Any insert which would have gone on the leaf block will now go to its
	 * right sibling.
	 */
	FUNC24(rel, leafblkno, leafrightsib);

	/* No ereport(ERROR) until changes are logged */
	FUNC27();

	/*
	 * Update parent.  The normal case is a tad tricky because we want to
	 * delete the target's downlink and the *following* key.  Easiest way is
	 * to copy the right sibling's downlink over the target downlink, and then
	 * delete the following item.
	 */
	page = FUNC5(topparent);
	opaque = (BTPageOpaque) FUNC20(page);

	itemid = FUNC18(page, topoff);
	itup = (IndexTuple) FUNC17(page, itemid);
	FUNC2(itup, rightsib);

	nextoffset = FUNC10(topoff);
	FUNC21(page, nextoffset);

	/*
	 * Mark the leaf page as half-dead, and stamp it with a pointer to the
	 * highest internal page in the branch we're deleting.  We use the tid of
	 * the high key to store it.
	 */
	page = FUNC5(leafbuf);
	opaque = (BTPageOpaque) FUNC20(page);
	opaque->btpo_flags |= BTP_HALF_DEAD;

	FUNC0(FUNC19(page) == P_HIKEY);
	FUNC9(&trunctuple, 0, sizeof(IndexTupleData));
	trunctuple.t_info = sizeof(IndexTupleData);
	if (target != leafblkno)
		FUNC3(&trunctuple, target);
	else
		FUNC3(&trunctuple, InvalidBlockNumber);

	if (!FUNC22(page, P_HIKEY, (Item) &trunctuple,
								 FUNC7(&trunctuple)))
		FUNC35(ERROR, "could not overwrite high key in half-dead page");

	/* Must mark buffers dirty before XLogInsert */
	FUNC8(topparent);
	FUNC8(leafbuf);

	/* XLOG stuff */
	if (FUNC26(rel))
	{
		xl_btree_mark_page_halfdead xlrec;
		XLogRecPtr	recptr;

		xlrec.poffset = topoff;
		xlrec.leafblk = leafblkno;
		if (target != leafblkno)
			xlrec.topparent = target;
		else
			xlrec.topparent = InvalidBlockNumber;

		FUNC28();
		FUNC30(0, leafbuf, REGBUF_WILL_INIT);
		FUNC30(1, topparent, REGBUF_STANDARD);

		page = FUNC5(leafbuf);
		opaque = (BTPageOpaque) FUNC20(page);
		xlrec.leftblk = opaque->btpo_prev;
		xlrec.rightblk = opaque->btpo_next;

		FUNC31((char *) &xlrec, SizeOfBtreeMarkPageHalfDead);

		recptr = FUNC29(RM_BTREE_ID, XLOG_BTREE_MARK_PAGE_HALFDEAD);

		page = FUNC5(topparent);
		FUNC23(page, recptr);
		page = FUNC5(leafbuf);
		FUNC23(page, recptr);
	}

	FUNC6();

	FUNC34(rel, topparent);
	return true;
}
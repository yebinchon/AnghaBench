#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ version; scalar_t__ fastlevel; int /*<<< orphan*/  last_cleanup_num_heap_tuples; int /*<<< orphan*/  oldest_btpo_xact; int /*<<< orphan*/  fastroot; int /*<<< orphan*/  level; int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ xl_btree_metadata ;
struct TYPE_15__ {scalar_t__ offnum; } ;
typedef  TYPE_3__ xl_btree_insert ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_17__ {scalar_t__ btm_fastlevel; scalar_t__ btm_version; int /*<<< orphan*/  btm_last_cleanup_num_heap_tuples; int /*<<< orphan*/  btm_oldest_btpo_xact; int /*<<< orphan*/  btm_fastroot; int /*<<< orphan*/  btm_level; int /*<<< orphan*/  btm_root; } ;
struct TYPE_13__ {scalar_t__ level; } ;
struct TYPE_16__ {int /*<<< orphan*/  btpo_flags; TYPE_1__ btpo; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  int /*<<< orphan*/  BTStack ;
typedef  int /*<<< orphan*/  BTScanInsert ;
typedef  TYPE_4__* BTPageOpaque ;
typedef  TYPE_5__ BTMetaPageData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTP_INCOMPLETE_SPLIT ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ BTREE_FASTPATH_MIN_LEVEL ; 
 int /*<<< orphan*/  BTREE_METAPAGE ; 
 scalar_t__ BTREE_NOVAC_VERSION ; 
 int /*<<< orphan*/  BT_WRITE ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ FUNC13 (TYPE_4__*) ; 
 int FUNC14 (TYPE_4__*) ; 
 int FUNC15 (TYPE_4__*) ; 
 int FUNC16 (TYPE_4__*) ; 
 scalar_t__ FUNC17 (TYPE_4__*) ; 
 scalar_t__ FUNC18 (TYPE_4__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_BTREE_ID ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  SizeOfBtreeInsert ; 
 int /*<<< orphan*/  XLOG_BTREE_INSERT_LEAF ; 
 int /*<<< orphan*/  XLOG_BTREE_INSERT_META ; 
 int /*<<< orphan*/  XLOG_BTREE_INSERT_UPPER ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC31 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC41(Relation rel,
			   BTScanInsert itup_key,
			   Buffer buf,
			   Buffer cbuf,
			   BTStack stack,
			   IndexTuple itup,
			   OffsetNumber newitemoff,
			   bool split_only_page)
{
	Page		page;
	BTPageOpaque lpageop;
	Size		itemsz;

	page = FUNC5(buf);
	lpageop = (BTPageOpaque) FUNC20(page);

	/* child buffer must be given iff inserting on an internal page */
	FUNC0(FUNC15(lpageop) == !FUNC6(cbuf));
	/* tuple must have appropriate number of attributes */
	FUNC0(!FUNC15(lpageop) ||
		   FUNC2(itup, rel) ==
		   FUNC8(rel));
	FUNC0(FUNC15(lpageop) ||
		   FUNC2(itup, rel) <=
		   FUNC9(rel));

	/* The caller should've finished any incomplete splits already. */
	if (FUNC14(lpageop))
		FUNC40(ERROR, "cannot insert to incompletely split page %u",
			 FUNC4(buf));

	itemsz = FUNC10(itup);
	itemsz = FUNC11(itemsz);	/* be safe, PageAddItem will do this but we
								 * need to be consistent */

	/*
	 * Do we need to split the page to fit the item on it?
	 *
	 * Note: PageGetFreeSpace() subtracts sizeof(ItemIdData) from its result,
	 * so this comparison is correct even though we appear to be accounting
	 * only for the item and not for its line pointer.
	 */
	if (FUNC19(page) < itemsz)
	{
		bool		is_root = FUNC16(lpageop);
		bool		is_only = FUNC17(lpageop) && FUNC18(lpageop);
		Buffer		rbuf;

		/*
		 * If we're here then a pagesplit is needed. We should never reach
		 * here if we're using the fastpath since we should have checked for
		 * all the required conditions, including the fact that this page has
		 * enough freespace. Note that this routine can in theory deal with
		 * the situation where a NULL stack pointer is passed (that's what
		 * would happen if the fastpath is taken). But that path is much
		 * slower, defeating the very purpose of the optimization.  The
		 * following assertion should protect us from any future code changes
		 * that invalidate those assumptions.
		 *
		 * Note that whenever we fail to take the fastpath, we clear the
		 * cached block. Checking for a valid cached block at this point is
		 * enough to decide whether we're in a fastpath or not.
		 */
		FUNC0(!(FUNC15(lpageop) &&
				 FUNC3(FUNC24(rel))));

		/* split the buffer into left and right halves */
		rbuf = FUNC38(rel, itup_key, buf, cbuf, newitemoff, itemsz, itup);
		FUNC22(rel,
							   FUNC4(buf),
							   FUNC4(rbuf));

		/*----------
		 * By here,
		 *
		 *		+  our target page has been split;
		 *		+  the original tuple has been inserted;
		 *		+  we have write locks on both the old (left half)
		 *		   and new (right half) buffers, after the split; and
		 *		+  we know the key we want to insert into the parent
		 *		   (it's the "high key" on the left child page).
		 *
		 * We're ready to do the parent insertion.  We need to hold onto the
		 * locks for the child pages until we locate the parent, but we can
		 * at least release the lock on the right child before doing the
		 * actual insertion.  The lock on the left child will be released
		 * last of all by parent insertion, where it is the 'cbuf' of parent
		 * page.
		 *----------
		 */
		FUNC35(rel, buf, rbuf, stack, is_root, is_only);
	}
	else
	{
		Buffer		metabuf = InvalidBuffer;
		Page		metapg = NULL;
		BTMetaPageData *metad = NULL;
		OffsetNumber itup_off;
		BlockNumber itup_blkno;
		BlockNumber cachedBlock = InvalidBlockNumber;

		itup_off = newitemoff;
		itup_blkno = FUNC4(buf);

		/*
		 * If we are doing this insert because we split a page that was the
		 * only one on its tree level, but was not the root, it may have been
		 * the "fast root".  We need to ensure that the fast root link points
		 * at or above the current page.  We can safely acquire a lock on the
		 * metapage here --- see comments for _bt_newroot().
		 */
		if (split_only_page)
		{
			FUNC0(!FUNC15(lpageop));

			metabuf = FUNC33(rel, BTREE_METAPAGE, BT_WRITE);
			metapg = FUNC5(metabuf);
			metad = FUNC1(metapg);

			if (metad->btm_fastlevel >= lpageop->btpo.level)
			{
				/* no update wanted */
				FUNC37(rel, metabuf);
				metabuf = InvalidBuffer;
			}
		}

		/*
		 * Every internal page should have exactly one negative infinity item
		 * at all times.  Only _bt_split() and _bt_newroot() should add items
		 * that become negative infinity items through truncation, since
		 * they're the only routines that allocate new internal pages.  Do not
		 * allow a retail insertion of a new item at the negative infinity
		 * offset.
		 */
		if (!FUNC15(lpageop) && newitemoff == FUNC13(lpageop))
			FUNC40(ERROR, "cannot insert second negative infinity item in block %u of index \"%s\"",
				 itup_blkno, FUNC23(rel));

		/* Do the update.  No ereport(ERROR) until changes are logged */
		FUNC27();

		if (!FUNC36(page, itemsz, itup, newitemoff))
			FUNC40(PANIC, "failed to add new item to block %u in index \"%s\"",
				 itup_blkno, FUNC23(rel));

		FUNC12(buf);

		if (FUNC6(metabuf))
		{
			/* upgrade meta-page if needed */
			if (metad->btm_version < BTREE_NOVAC_VERSION)
				FUNC39(metapg);
			metad->btm_fastroot = itup_blkno;
			metad->btm_fastlevel = lpageop->btpo.level;
			FUNC12(metabuf);
		}

		/* clear INCOMPLETE_SPLIT flag on child if inserting a downlink */
		if (FUNC6(cbuf))
		{
			Page		cpage = FUNC5(cbuf);
			BTPageOpaque cpageop = (BTPageOpaque) FUNC20(cpage);

			FUNC0(FUNC14(cpageop));
			cpageop->btpo_flags &= ~BTP_INCOMPLETE_SPLIT;
			FUNC12(cbuf);
		}

		/*
		 * Cache the block information if we just inserted into the rightmost
		 * leaf page of the index and it's not the root page.  For very small
		 * index where root is also the leaf, there is no point trying for any
		 * optimization.
		 */
		if (FUNC18(lpageop) && FUNC15(lpageop) && !FUNC16(lpageop))
			cachedBlock = FUNC4(buf);

		/* XLOG stuff */
		if (FUNC25(rel))
		{
			xl_btree_insert xlrec;
			xl_btree_metadata xlmeta;
			uint8		xlinfo;
			XLogRecPtr	recptr;

			xlrec.offnum = itup_off;

			FUNC28();
			FUNC32((char *) &xlrec, SizeOfBtreeInsert);

			if (FUNC15(lpageop))
				xlinfo = XLOG_BTREE_INSERT_LEAF;
			else
			{
				/*
				 * Register the left child whose INCOMPLETE_SPLIT flag was
				 * cleared.
				 */
				FUNC31(1, cbuf, REGBUF_STANDARD);

				xlinfo = XLOG_BTREE_INSERT_UPPER;
			}

			if (FUNC6(metabuf))
			{
				FUNC0(metad->btm_version >= BTREE_NOVAC_VERSION);
				xlmeta.version = metad->btm_version;
				xlmeta.root = metad->btm_root;
				xlmeta.level = metad->btm_level;
				xlmeta.fastroot = metad->btm_fastroot;
				xlmeta.fastlevel = metad->btm_fastlevel;
				xlmeta.oldest_btpo_xact = metad->btm_oldest_btpo_xact;
				xlmeta.last_cleanup_num_heap_tuples =
					metad->btm_last_cleanup_num_heap_tuples;

				FUNC31(2, metabuf, REGBUF_WILL_INIT | REGBUF_STANDARD);
				FUNC30(2, (char *) &xlmeta, sizeof(xl_btree_metadata));

				xlinfo = XLOG_BTREE_INSERT_META;
			}

			FUNC31(0, buf, REGBUF_STANDARD);
			FUNC30(0, (char *) itup, FUNC10(itup));

			recptr = FUNC29(RM_BTREE_ID, xlinfo);

			if (FUNC6(metabuf))
			{
				FUNC21(metapg, recptr);
			}
			if (FUNC6(cbuf))
			{
				FUNC21(FUNC5(cbuf), recptr);
			}

			FUNC21(page, recptr);
		}

		FUNC7();

		/* release buffers */
		if (FUNC6(metabuf))
			FUNC37(rel, metabuf);
		if (FUNC6(cbuf))
			FUNC37(rel, cbuf);
		FUNC37(rel, buf);

		/*
		 * If we decided to cache the insertion target block, then set it now.
		 * But before that, check for the height of the tree and don't go for
		 * the optimization for small indexes. We defer that check to this
		 * point to ensure that we don't call _bt_getrootheight while holding
		 * lock on any other block.
		 *
		 * We do this after dropping locks on all buffers. So the information
		 * about whether the insertion block is still the rightmost block or
		 * not may have changed in between. But we will deal with that during
		 * next insert operation. No special care is required while setting
		 * it.
		 */
		if (FUNC3(cachedBlock) &&
			FUNC34(rel) >= BTREE_FASTPATH_MIN_LEVEL)
			FUNC26(rel, cachedBlock);
	}
}
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
struct TYPE_14__ {scalar_t__ topparent; scalar_t__ leafrightsib; scalar_t__ leafleftsib; int /*<<< orphan*/  btpo_xact; scalar_t__ rightsib; scalar_t__ leftsib; } ;
typedef  TYPE_2__ xl_btree_unlink_page ;
struct TYPE_15__ {scalar_t__ version; int fastlevel; int /*<<< orphan*/  last_cleanup_num_heap_tuples; int /*<<< orphan*/  oldest_btpo_xact; scalar_t__ fastroot; int /*<<< orphan*/  level; int /*<<< orphan*/  root; } ;
typedef  TYPE_3__ xl_btree_metadata ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_17__ {int btm_fastlevel; scalar_t__ btm_version; int /*<<< orphan*/  btm_last_cleanup_num_heap_tuples; int /*<<< orphan*/  btm_oldest_btpo_xact; scalar_t__ btm_fastroot; int /*<<< orphan*/  btm_level; int /*<<< orphan*/  btm_root; } ;
struct TYPE_13__ {int level; int /*<<< orphan*/  xact; } ;
struct TYPE_16__ {scalar_t__ btpo_prev; scalar_t__ btpo_next; TYPE_1__ btpo; int /*<<< orphan*/  btpo_flags; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * Page ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;
typedef  TYPE_4__* BTPageOpaque ;
typedef  TYPE_5__ BTMetaPageData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTP_DELETED ; 
 int /*<<< orphan*/  BTP_HALF_DEAD ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ BTREE_METAPAGE ; 
 scalar_t__ BTREE_NOVAC_VERSION ; 
 int /*<<< orphan*/  BT_READ ; 
 int /*<<< orphan*/  BT_WRITE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_4__*) ; 
 scalar_t__ P_HIKEY ; 
 scalar_t__ FUNC13 (TYPE_4__*) ; 
 scalar_t__ FUNC14 (TYPE_4__*) ; 
 scalar_t__ FUNC15 (TYPE_4__*) ; 
 scalar_t__ FUNC16 (TYPE_4__*) ; 
 scalar_t__ P_NONE ; 
 int FUNC17 (TYPE_4__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_BTREE_ID ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  SizeOfBtreeUnlinkPage ; 
 int /*<<< orphan*/  XLOG_BTREE_UNLINK_PAGE ; 
 int /*<<< orphan*/  XLOG_BTREE_UNLINK_PAGE_META ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC31 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (char*,scalar_t__,scalar_t__,...) ; 

__attribute__((used)) static bool
FUNC40(Relation rel, Buffer leafbuf, bool *rightsib_empty)
{
	BlockNumber leafblkno = FUNC5(leafbuf);
	BlockNumber leafleftsib;
	BlockNumber leafrightsib;
	BlockNumber target;
	BlockNumber leftsib;
	BlockNumber rightsib;
	Buffer		lbuf = InvalidBuffer;
	Buffer		buf;
	Buffer		rbuf;
	Buffer		metabuf = InvalidBuffer;
	Page		metapg = NULL;
	BTMetaPageData *metad = NULL;
	ItemId		itemid;
	Page		page;
	BTPageOpaque opaque;
	bool		rightsib_is_rightmost;
	int			targetlevel;
	IndexTuple	leafhikey;
	BlockNumber nextchild;

	page = FUNC6(leafbuf);
	opaque = (BTPageOpaque) FUNC21(page);

	FUNC0(FUNC15(opaque) && FUNC14(opaque));

	/*
	 * Remember some information about the leaf page.
	 */
	itemid = FUNC19(page, P_HIKEY);
	leafhikey = (IndexTuple) FUNC18(page, itemid);
	leafleftsib = opaque->btpo_prev;
	leafrightsib = opaque->btpo_next;

	FUNC10(leafbuf, BUFFER_LOCK_UNLOCK);

	/*
	 * Check here, as calling loops will have locks held, preventing
	 * interrupts from being processed.
	 */
	FUNC8();

	/*
	 * If the leaf page still has a parent pointing to it (or a chain of
	 * parents), we don't unlink the leaf page yet, but the topmost remaining
	 * parent in the branch.  Set 'target' and 'buf' to reference the page
	 * actually being unlinked.
	 */
	target = FUNC3(leafhikey);

	if (target != InvalidBlockNumber)
	{
		FUNC0(target != leafblkno);

		/* fetch the block number of the topmost parent's left sibling */
		buf = FUNC33(rel, target, BT_READ);
		page = FUNC6(buf);
		opaque = (BTPageOpaque) FUNC21(page);
		leftsib = opaque->btpo_prev;
		targetlevel = opaque->btpo.level;

		/*
		 * To avoid deadlocks, we'd better drop the target page lock before
		 * going further.
		 */
		FUNC10(buf, BUFFER_LOCK_UNLOCK);
	}
	else
	{
		target = leafblkno;

		buf = leafbuf;
		leftsib = leafleftsib;
		targetlevel = 0;
	}

	/*
	 * We have to lock the pages we need to modify in the standard order:
	 * moving right, then up.  Else we will deadlock against other writers.
	 *
	 * So, first lock the leaf page, if it's not the target.  Then find and
	 * write-lock the current left sibling of the target page.  The sibling
	 * that was current a moment ago could have split, so we may have to move
	 * right.  This search could fail if either the sibling or the target page
	 * was deleted by someone else meanwhile; if so, give up.  (Right now,
	 * that should never happen, since page deletion is only done in VACUUM
	 * and there shouldn't be multiple VACUUMs concurrently on the same
	 * table.)
	 */
	if (target != leafblkno)
		FUNC10(leafbuf, BT_WRITE);
	if (leftsib != P_NONE)
	{
		lbuf = FUNC33(rel, leftsib, BT_WRITE);
		page = FUNC6(lbuf);
		opaque = (BTPageOpaque) FUNC21(page);
		while (FUNC13(opaque) || opaque->btpo_next != target)
		{
			/* step right one page */
			leftsib = opaque->btpo_next;
			FUNC34(rel, lbuf);

			/*
			 * It'd be good to check for interrupts here, but it's not easy to
			 * do so because a lock is always held. This block isn't
			 * frequently reached, so hopefully the consequences of not
			 * checking interrupts aren't too bad.
			 */

			if (leftsib == P_NONE)
			{
				FUNC36(LOG, "no left sibling (concurrent deletion?) of block %u in \"%s\"",
					 target,
					 FUNC24(rel));
				if (target != leafblkno)
				{
					/* we have only a pin on target, but pin+lock on leafbuf */
					FUNC26(buf);
					FUNC34(rel, leafbuf);
				}
				else
				{
					/* we have only a pin on leafbuf */
					FUNC26(leafbuf);
				}
				return false;
			}
			lbuf = FUNC33(rel, leftsib, BT_WRITE);
			page = FUNC6(lbuf);
			opaque = (BTPageOpaque) FUNC21(page);
		}
	}
	else
		lbuf = InvalidBuffer;

	/*
	 * Next write-lock the target page itself.  It should be okay to take just
	 * a write lock not a superexclusive lock, since no scans would stop on an
	 * empty page.
	 */
	FUNC10(buf, BT_WRITE);
	page = FUNC6(buf);
	opaque = (BTPageOpaque) FUNC21(page);

	/*
	 * Check page is still empty etc, else abandon deletion.  This is just for
	 * paranoia's sake; a half-dead page cannot resurrect because there can be
	 * only one vacuum process running at a time.
	 */
	if (FUNC17(opaque) || FUNC16(opaque) || FUNC13(opaque))
	{
		FUNC36(ERROR, "half-dead page changed status unexpectedly in block %u of index \"%s\"",
			 target, FUNC24(rel));
	}
	if (opaque->btpo_prev != leftsib)
		FUNC37(ERROR,
				(FUNC38(ERRCODE_INDEX_CORRUPTED),
				 FUNC39("left link changed unexpectedly in block %u of index \"%s\"",
								 target, FUNC24(rel))));

	if (target == leafblkno)
	{
		if (FUNC12(opaque) <= FUNC20(page) ||
			!FUNC15(opaque) || !FUNC14(opaque))
			FUNC36(ERROR, "half-dead page changed status unexpectedly in block %u of index \"%s\"",
				 target, FUNC24(rel));
		nextchild = InvalidBlockNumber;
	}
	else
	{
		if (FUNC12(opaque) != FUNC20(page) ||
			FUNC15(opaque))
			FUNC36(ERROR, "half-dead page changed status unexpectedly in block %u of index \"%s\"",
				 target, FUNC24(rel));

		/* remember the next non-leaf child down in the branch. */
		itemid = FUNC19(page, FUNC12(opaque));
		nextchild = FUNC2((IndexTuple) FUNC18(page, itemid));
		if (nextchild == leafblkno)
			nextchild = InvalidBlockNumber;
	}

	/*
	 * And next write-lock the (current) right sibling.
	 */
	rightsib = opaque->btpo_next;
	rbuf = FUNC33(rel, rightsib, BT_WRITE);
	page = FUNC6(rbuf);
	opaque = (BTPageOpaque) FUNC21(page);
	if (opaque->btpo_prev != target)
		FUNC37(ERROR,
				(FUNC38(ERRCODE_INDEX_CORRUPTED),
				 FUNC39("right sibling's left-link doesn't match: "
								 "block %u links to %u instead of expected %u in index \"%s\"",
								 rightsib, opaque->btpo_prev, target,
								 FUNC24(rel))));
	rightsib_is_rightmost = FUNC17(opaque);
	*rightsib_empty = (FUNC12(opaque) > FUNC20(page));

	/*
	 * If we are deleting the next-to-last page on the target's level, then
	 * the rightsib is a candidate to become the new fast root. (In theory, it
	 * might be possible to push the fast root even further down, but the odds
	 * of doing so are slim, and the locking considerations daunting.)
	 *
	 * We can safely acquire a lock on the metapage here --- see comments for
	 * _bt_newroot().
	 */
	if (leftsib == P_NONE && rightsib_is_rightmost)
	{
		page = FUNC6(rbuf);
		opaque = (BTPageOpaque) FUNC21(page);
		if (FUNC17(opaque))
		{
			/* rightsib will be the only one left on the level */
			metabuf = FUNC33(rel, BTREE_METAPAGE, BT_WRITE);
			metapg = FUNC6(metabuf);
			metad = FUNC1(metapg);

			/*
			 * The expected case here is btm_fastlevel == targetlevel+1; if
			 * the fastlevel is <= targetlevel, something is wrong, and we
			 * choose to overwrite it to fix it.
			 */
			if (metad->btm_fastlevel > targetlevel + 1)
			{
				/* no update wanted */
				FUNC34(rel, metabuf);
				metabuf = InvalidBuffer;
			}
		}
	}

	/*
	 * Here we begin doing the deletion.
	 */

	/* No ereport(ERROR) until changes are logged */
	FUNC27();

	/*
	 * Update siblings' side-links.  Note the target page's side-links will
	 * continue to point to the siblings.  Asserts here are just rechecking
	 * things we already verified above.
	 */
	if (FUNC7(lbuf))
	{
		page = FUNC6(lbuf);
		opaque = (BTPageOpaque) FUNC21(page);
		FUNC0(opaque->btpo_next == target);
		opaque->btpo_next = rightsib;
	}
	page = FUNC6(rbuf);
	opaque = (BTPageOpaque) FUNC21(page);
	FUNC0(opaque->btpo_prev == target);
	opaque->btpo_prev = leftsib;

	/*
	 * If we deleted a parent of the targeted leaf page, instead of the leaf
	 * itself, update the leaf to point to the next remaining child in the
	 * branch.
	 */
	if (target != leafblkno)
		FUNC4(leafhikey, nextchild);

	/*
	 * Mark the page itself deleted.  It can be recycled when all current
	 * transactions are gone.  Storing GetTopTransactionId() would work, but
	 * we're in VACUUM and would not otherwise have an XID.  Having already
	 * updated links to the target, ReadNewTransactionId() suffices as an
	 * upper bound.  Any scan having retained a now-stale link is advertising
	 * in its PGXACT an xmin less than or equal to the value we read here.  It
	 * will continue to do so, holding back RecentGlobalXmin, for the duration
	 * of that scan.
	 */
	page = FUNC6(buf);
	opaque = (BTPageOpaque) FUNC21(page);
	opaque->btpo_flags &= ~BTP_HALF_DEAD;
	opaque->btpo_flags |= BTP_DELETED;
	opaque->btpo.xact = FUNC23();

	/* And update the metapage, if needed */
	if (FUNC7(metabuf))
	{
		/* upgrade metapage if needed */
		if (metad->btm_version < BTREE_NOVAC_VERSION)
			FUNC35(metapg);
		metad->btm_fastroot = rightsib;
		metad->btm_fastlevel = targetlevel;
		FUNC11(metabuf);
	}

	/* Must mark buffers dirty before XLogInsert */
	FUNC11(rbuf);
	FUNC11(buf);
	if (FUNC7(lbuf))
		FUNC11(lbuf);
	if (target != leafblkno)
		FUNC11(leafbuf);

	/* XLOG stuff */
	if (FUNC25(rel))
	{
		xl_btree_unlink_page xlrec;
		xl_btree_metadata xlmeta;
		uint8		xlinfo;
		XLogRecPtr	recptr;

		FUNC28();

		FUNC31(0, buf, REGBUF_WILL_INIT);
		if (FUNC7(lbuf))
			FUNC31(1, lbuf, REGBUF_STANDARD);
		FUNC31(2, rbuf, REGBUF_STANDARD);
		if (target != leafblkno)
			FUNC31(3, leafbuf, REGBUF_WILL_INIT);

		/* information on the unlinked block */
		xlrec.leftsib = leftsib;
		xlrec.rightsib = rightsib;
		xlrec.btpo_xact = opaque->btpo.xact;

		/* information needed to recreate the leaf block (if not the target) */
		xlrec.leafleftsib = leafleftsib;
		xlrec.leafrightsib = leafrightsib;
		xlrec.topparent = nextchild;

		FUNC32((char *) &xlrec, SizeOfBtreeUnlinkPage);

		if (FUNC7(metabuf))
		{
			FUNC31(4, metabuf, REGBUF_WILL_INIT | REGBUF_STANDARD);

			FUNC0(metad->btm_version >= BTREE_NOVAC_VERSION);
			xlmeta.version = metad->btm_version;
			xlmeta.root = metad->btm_root;
			xlmeta.level = metad->btm_level;
			xlmeta.fastroot = metad->btm_fastroot;
			xlmeta.fastlevel = metad->btm_fastlevel;
			xlmeta.oldest_btpo_xact = metad->btm_oldest_btpo_xact;
			xlmeta.last_cleanup_num_heap_tuples = metad->btm_last_cleanup_num_heap_tuples;

			FUNC30(4, (char *) &xlmeta, sizeof(xl_btree_metadata));
			xlinfo = XLOG_BTREE_UNLINK_PAGE_META;
		}
		else
			xlinfo = XLOG_BTREE_UNLINK_PAGE;

		recptr = FUNC29(RM_BTREE_ID, xlinfo);

		if (FUNC7(metabuf))
		{
			FUNC22(metapg, recptr);
		}
		page = FUNC6(rbuf);
		FUNC22(page, recptr);
		page = FUNC6(buf);
		FUNC22(page, recptr);
		if (FUNC7(lbuf))
		{
			page = FUNC6(lbuf);
			FUNC22(page, recptr);
		}
		if (target != leafblkno)
		{
			page = FUNC6(leafbuf);
			FUNC22(page, recptr);
		}
	}

	FUNC9();

	/* release metapage */
	if (FUNC7(metabuf))
		FUNC34(rel, metabuf);

	/* release siblings */
	if (FUNC7(lbuf))
		FUNC34(rel, lbuf);
	FUNC34(rel, rbuf);

	/*
	 * Release the target, if it was not the leaf block.  The leaf is always
	 * kept locked.
	 */
	if (target != leafblkno)
		FUNC34(rel, buf);

	return true;
}
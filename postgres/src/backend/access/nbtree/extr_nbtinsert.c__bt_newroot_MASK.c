#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ level; void* rootblk; } ;
typedef  TYPE_2__ xl_btree_newroot ;
struct TYPE_18__ {scalar_t__ version; int /*<<< orphan*/  last_cleanup_num_heap_tuples; int /*<<< orphan*/  oldest_btpo_xact; scalar_t__ fastlevel; void* fastroot; scalar_t__ level; void* root; } ;
typedef  TYPE_3__ xl_btree_metadata ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_22__ {scalar_t__ btm_version; int /*<<< orphan*/  btm_last_cleanup_num_heap_tuples; int /*<<< orphan*/  btm_oldest_btpo_xact; scalar_t__ btm_level; scalar_t__ btm_fastlevel; void* btm_fastroot; void* btm_root; } ;
struct TYPE_16__ {scalar_t__ level; } ;
struct TYPE_21__ {int /*<<< orphan*/  btpo_flags; TYPE_1__ btpo; scalar_t__ btpo_cycleid; int /*<<< orphan*/  btpo_next; int /*<<< orphan*/  btpo_prev; } ;
struct TYPE_20__ {int t_info; } ;
struct TYPE_19__ {int pd_upper; int pd_special; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_4__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  IndexTupleData ;
typedef  TYPE_5__* IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  void* BlockNumber ;
typedef  TYPE_6__* BTPageOpaque ;
typedef  TYPE_7__ BTMetaPageData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTP_INCOMPLETE_SPLIT ; 
 int /*<<< orphan*/  BTP_ROOT ; 
 TYPE_7__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  BTREE_METAPAGE ; 
 scalar_t__ BTREE_NOVAC_VERSION ; 
 int /*<<< orphan*/  BT_WRITE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,void*) ; 
 scalar_t__ FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOffsetNumber ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  P_FIRSTKEY ; 
 int /*<<< orphan*/  P_HIKEY ; 
 int FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  P_NEW ; 
 int /*<<< orphan*/  P_NONE ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_BTREE_ID ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  SizeOfBtreeNewroot ; 
 int /*<<< orphan*/  XLOG_BTREE_NEWROOT ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_5__*) ; 

__attribute__((used)) static Buffer
FUNC32(Relation rel, Buffer lbuf, Buffer rbuf)
{
	Buffer		rootbuf;
	Page		lpage,
				rootpage;
	BlockNumber lbkno,
				rbkno;
	BlockNumber rootblknum;
	BTPageOpaque rootopaque;
	BTPageOpaque lopaque;
	ItemId		itemid;
	IndexTuple	item;
	IndexTuple	left_item;
	Size		left_item_sz;
	IndexTuple	right_item;
	Size		right_item_sz;
	Buffer		metabuf;
	Page		metapg;
	BTMetaPageData *metad;

	lbkno = FUNC5(lbuf);
	rbkno = FUNC5(rbuf);
	lpage = FUNC6(lbuf);
	lopaque = (BTPageOpaque) FUNC16(lpage);

	/* get a new root page */
	rootbuf = FUNC26(rel, P_NEW, BT_WRITE);
	rootpage = FUNC6(rootbuf);
	rootblknum = FUNC5(rootbuf);

	/* acquire lock on the metapage */
	metabuf = FUNC26(rel, BTREE_METAPAGE, BT_WRITE);
	metapg = FUNC6(metabuf);
	metad = FUNC1(metapg);

	/*
	 * Create downlink item for left page (old root).  Since this will be the
	 * first item in a non-leaf page, it implicitly has minus-infinity key
	 * value, so we need not store any actual key in it.
	 */
	left_item_sz = sizeof(IndexTupleData);
	left_item = (IndexTuple) FUNC30(left_item_sz);
	left_item->t_info = left_item_sz;
	FUNC2(left_item, lbkno);
	FUNC4(left_item, 0);

	/*
	 * Create downlink item for right page.  The key for it is obtained from
	 * the "high key" position in the left page.
	 */
	itemid = FUNC15(lpage, P_HIKEY);
	right_item_sz = FUNC10(itemid);
	item = (IndexTuple) FUNC14(lpage, itemid);
	right_item = FUNC7(item);
	FUNC2(right_item, rbkno);

	/* NO EREPORT(ERROR) from here till newroot op is logged */
	FUNC20();

	/* upgrade metapage if needed */
	if (metad->btm_version < BTREE_NOVAC_VERSION)
		FUNC28(metapg);

	/* set btree special data */
	rootopaque = (BTPageOpaque) FUNC16(rootpage);
	rootopaque->btpo_prev = rootopaque->btpo_next = P_NONE;
	rootopaque->btpo_flags = BTP_ROOT;
	rootopaque->btpo.level =
		((BTPageOpaque) FUNC16(lpage))->btpo.level + 1;
	rootopaque->btpo_cycleid = 0;

	/* update metapage data */
	metad->btm_root = rootblknum;
	metad->btm_level = rootopaque->btpo.level;
	metad->btm_fastroot = rootblknum;
	metad->btm_fastlevel = rootopaque->btpo.level;

	/*
	 * Insert the left page pointer into the new root page.  The root page is
	 * the rightmost page on its level so there is no "high key" in it; the
	 * two items will go into positions P_HIKEY and P_FIRSTKEY.
	 *
	 * Note: we *must* insert the two items in item-number order, for the
	 * benefit of _bt_restore_page().
	 */
	FUNC0(FUNC3(left_item, rel) == 0);
	if (FUNC13(rootpage, (Item) left_item, left_item_sz, P_HIKEY,
					false, false) == InvalidOffsetNumber)
		FUNC29(PANIC, "failed to add leftkey to new root page"
			 " while splitting block %u of index \"%s\"",
			 FUNC5(lbuf), FUNC18(rel));

	/*
	 * insert the right page pointer into the new root page.
	 */
	FUNC0(FUNC3(right_item, rel) > 0);
	FUNC0(FUNC3(right_item, rel) <=
		   FUNC9(rel));
	if (FUNC13(rootpage, (Item) right_item, right_item_sz, P_FIRSTKEY,
					false, false) == InvalidOffsetNumber)
		FUNC29(PANIC, "failed to add rightkey to new root page"
			 " while splitting block %u of index \"%s\"",
			 FUNC5(lbuf), FUNC18(rel));

	/* Clear the incomplete-split flag in the left child */
	FUNC0(FUNC12(lopaque));
	lopaque->btpo_flags &= ~BTP_INCOMPLETE_SPLIT;
	FUNC11(lbuf);

	FUNC11(rootbuf);
	FUNC11(metabuf);

	/* XLOG stuff */
	if (FUNC19(rel))
	{
		xl_btree_newroot xlrec;
		XLogRecPtr	recptr;
		xl_btree_metadata md;

		xlrec.rootblk = rootblknum;
		xlrec.level = metad->btm_level;

		FUNC21();
		FUNC25((char *) &xlrec, SizeOfBtreeNewroot);

		FUNC24(0, rootbuf, REGBUF_WILL_INIT);
		FUNC24(1, lbuf, REGBUF_STANDARD);
		FUNC24(2, metabuf, REGBUF_WILL_INIT | REGBUF_STANDARD);

		FUNC0(metad->btm_version >= BTREE_NOVAC_VERSION);
		md.version = metad->btm_version;
		md.root = rootblknum;
		md.level = metad->btm_level;
		md.fastroot = rootblknum;
		md.fastlevel = metad->btm_level;
		md.oldest_btpo_xact = metad->btm_oldest_btpo_xact;
		md.last_cleanup_num_heap_tuples = metad->btm_last_cleanup_num_heap_tuples;

		FUNC23(2, (char *) &md, sizeof(xl_btree_metadata));

		/*
		 * Direct access to page is not good but faster - we should implement
		 * some new func in page API.
		 */
		FUNC23(0,
							(char *) rootpage + ((PageHeader) rootpage)->pd_upper,
							((PageHeader) rootpage)->pd_special -
							((PageHeader) rootpage)->pd_upper);

		recptr = FUNC22(RM_BTREE_ID, XLOG_BTREE_NEWROOT);

		FUNC17(lpage, recptr);
		FUNC17(rootpage, recptr);
		FUNC17(metapg, recptr);
	}

	FUNC8();

	/* done with metapage */
	FUNC27(rel, metabuf);

	FUNC31(left_item);
	FUNC31(right_item);

	return rootbuf;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ level; scalar_t__ firstright; scalar_t__ newitemoff; } ;
typedef  TYPE_2__ xl_btree_split ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_15__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_3__ XLogReaderState ;
struct TYPE_13__ {scalar_t__ level; } ;
struct TYPE_16__ {scalar_t__ btpo_prev; scalar_t__ btpo_cycleid; scalar_t__ btpo_next; int /*<<< orphan*/  btpo_flags; TYPE_1__ btpo; } ;
typedef  scalar_t__ Size ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/ * IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;
typedef  TYPE_4__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  BTP_INCOMPLETE_SPLIT ; 
 int /*<<< orphan*/  BTP_LEAF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 scalar_t__ P_HIKEY ; 
 scalar_t__ P_NONE ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int) ; 
 scalar_t__ FUNC19 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 char* FUNC20 (TYPE_3__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC27(bool onleft, XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_btree_split *xlrec = (xl_btree_split *) FUNC22(record);
	bool		isleaf = (xlrec->level == 0);
	Buffer		lbuf;
	Buffer		rbuf;
	Page		rpage;
	BTPageOpaque ropaque;
	char	   *datapos;
	Size		datalen;
	BlockNumber leftsib;
	BlockNumber rightsib;
	BlockNumber rnext;

	FUNC21(record, 0, NULL, NULL, &leftsib);
	FUNC21(record, 1, NULL, NULL, &rightsib);
	if (!FUNC21(record, 2, NULL, NULL, &rnext))
		rnext = P_NONE;

	/*
	 * Clear the incomplete split flag on the left sibling of the child page
	 * this is a downlink for.  (Like in btree_xlog_insert, this can be done
	 * before locking the other pages)
	 */
	if (!isleaf)
		FUNC23(record, 3);

	/* Reconstruct right (new) sibling page from scratch */
	rbuf = FUNC18(record, 1);
	datapos = FUNC20(record, 1, &datalen);
	rpage = (Page) FUNC1(rbuf);

	FUNC24(rpage, FUNC2(rbuf));
	ropaque = (BTPageOpaque) FUNC13(rpage);

	ropaque->btpo_prev = leftsib;
	ropaque->btpo_next = rnext;
	ropaque->btpo.level = xlrec->level;
	ropaque->btpo_flags = isleaf ? BTP_LEAF : 0;
	ropaque->btpo_cycleid = 0;

	FUNC25(rpage, datapos, datalen);

	FUNC16(rpage, lsn);
	FUNC7(rbuf);

	/* Now reconstruct left (original) sibling page */
	if (FUNC19(record, 0, &lbuf) == BLK_NEEDS_REDO)
	{
		/*
		 * To retain the same physical order of the tuples that they had, we
		 * initialize a temporary empty page for the left page and add all the
		 * items to that in item number order.  This mirrors how _bt_split()
		 * works.  Retaining the same physical order makes WAL consistency
		 * checking possible.  See also _bt_restore_page(), which does the
		 * same for the right page.
		 */
		Page		lpage = (Page) FUNC1(lbuf);
		BTPageOpaque lopaque = (BTPageOpaque) FUNC13(lpage);
		OffsetNumber off;
		IndexTuple	newitem = NULL,
					left_hikey = NULL;
		Size		newitemsz = 0,
					left_hikeysz = 0;
		Page		newlpage;
		OffsetNumber leftoff;

		datapos = FUNC20(record, 0, &datalen);

		if (onleft)
		{
			newitem = (IndexTuple) datapos;
			newitemsz = FUNC6(FUNC4(newitem));
			datapos += newitemsz;
			datalen -= newitemsz;
		}

		/* Extract left hikey and its size (assuming 16-bit alignment) */
		left_hikey = (IndexTuple) datapos;
		left_hikeysz = FUNC6(FUNC4(left_hikey));
		datapos += left_hikeysz;
		datalen -= left_hikeysz;

		FUNC0(datalen == 0);

		newlpage = FUNC14(lpage);

		/* Set high key */
		leftoff = P_HIKEY;
		if (FUNC10(newlpage, (Item) left_hikey, left_hikeysz,
						P_HIKEY, false, false) == InvalidOffsetNumber)
			FUNC26(PANIC, "failed to add high key to left page after split");
		leftoff = FUNC8(leftoff);

		for (off = FUNC9(lopaque); off < xlrec->firstright; off++)
		{
			ItemId		itemid;
			Size		itemsz;
			IndexTuple	item;

			/* add the new item if it was inserted on left page */
			if (onleft && off == xlrec->newitemoff)
			{
				if (FUNC10(newlpage, (Item) newitem, newitemsz, leftoff,
								false, false) == InvalidOffsetNumber)
					FUNC26(ERROR, "failed to add new item to left page after split");
				leftoff = FUNC8(leftoff);
			}

			itemid = FUNC12(lpage, off);
			itemsz = FUNC5(itemid);
			item = (IndexTuple) FUNC11(lpage, itemid);
			if (FUNC10(newlpage, (Item) item, itemsz, leftoff,
							false, false) == InvalidOffsetNumber)
				FUNC26(ERROR, "failed to add old item to left page after split");
			leftoff = FUNC8(leftoff);
		}

		/* cope with possibility that newitem goes at the end */
		if (onleft && off == xlrec->newitemoff)
		{
			if (FUNC10(newlpage, (Item) newitem, newitemsz, leftoff,
							false, false) == InvalidOffsetNumber)
				FUNC26(ERROR, "failed to add new item to left page after split");
			leftoff = FUNC8(leftoff);
		}

		FUNC15(newlpage, lpage);

		/* Fix opaque fields */
		lopaque->btpo_flags = BTP_INCOMPLETE_SPLIT;
		if (isleaf)
			lopaque->btpo_flags |= BTP_LEAF;
		lopaque->btpo_next = rightsib;
		lopaque->btpo_cycleid = 0;

		FUNC16(lpage, lsn);
		FUNC7(lbuf);
	}

	/*
	 * We no longer need the buffers.  They must be released together, so that
	 * readers cannot observe two inconsistent halves.
	 */
	if (FUNC3(lbuf))
		FUNC17(lbuf);
	FUNC17(rbuf);

	/*
	 * Fix left-link of the page to the right of the new right sibling.
	 *
	 * Note: in normal operation, we do this while still holding lock on the
	 * two split pages.  However, that's not necessary for correctness in WAL
	 * replay, because no other index update can be in progress, and readers
	 * will cope properly when following an obsolete left-link.
	 */
	if (rnext != P_NONE)
	{
		Buffer		buffer;

		if (FUNC19(record, 2, &buffer) == BLK_NEEDS_REDO)
		{
			Page		page = (Page) FUNC1(buffer);
			BTPageOpaque pageop = (BTPageOpaque) FUNC13(page);

			pageop->btpo_prev = rightsib;

			FUNC16(page, lsn);
			FUNC7(buffer);
		}
		if (FUNC3(buffer))
			FUNC17(buffer);
	}
}
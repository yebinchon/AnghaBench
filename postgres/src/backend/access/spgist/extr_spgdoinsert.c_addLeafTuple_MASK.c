#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xlrec ;
struct TYPE_11__ {int newPage; int storesNulls; scalar_t__ offnumLeaf; scalar_t__ offnumHeadLeaf; scalar_t__ offnumParent; scalar_t__ nodeI; } ;
typedef  TYPE_1__ spgxlogAddLeaf ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_14__ {scalar_t__ offnum; scalar_t__ buffer; int /*<<< orphan*/  page; int /*<<< orphan*/  blkno; scalar_t__ node; } ;
struct TYPE_13__ {int size; scalar_t__ tupstate; void* nextOffset; } ;
struct TYPE_12__ {int /*<<< orphan*/  isBuild; } ;
typedef  TYPE_2__ SpGistState ;
typedef  TYPE_3__* SpGistLeafTuple ;
typedef  TYPE_4__ SPPageDesc ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidBuffer ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_SPGIST_ID ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPGIST_DEAD ; 
 scalar_t__ SPGIST_LIVE ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  XLOG_SPGIST_ADD_LEAF ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC17(Relation index, SpGistState *state, SpGistLeafTuple leafTuple,
			 SPPageDesc *current, SPPageDesc *parent, bool isNulls, bool isNew)
{
	spgxlogAddLeaf xlrec;

	xlrec.newPage = isNew;
	xlrec.storesNulls = isNulls;

	/* these will be filled below as needed */
	xlrec.offnumLeaf = InvalidOffsetNumber;
	xlrec.offnumHeadLeaf = InvalidOffsetNumber;
	xlrec.offnumParent = InvalidOffsetNumber;
	xlrec.nodeI = 0;

	FUNC8();

	if (current->offnum == InvalidOffsetNumber ||
		FUNC9(current->blkno))
	{
		/* Tuple is not part of a chain */
		leafTuple->nextOffset = InvalidOffsetNumber;
		current->offnum = FUNC10(state, current->page,
											   (Item) leafTuple, leafTuple->size,
											   NULL, false);

		xlrec.offnumLeaf = current->offnum;

		/* Must update parent's downlink if any */
		if (parent->buffer != InvalidBuffer)
		{
			xlrec.offnumParent = parent->offnum;
			xlrec.nodeI = parent->node;

			FUNC16(index, parent, current->blkno, current->offnum);
		}
	}
	else
	{
		/*
		 * Tuple must be inserted into existing chain.  We mustn't change the
		 * chain's head address, but we don't need to chase the entire chain
		 * to put the tuple at the end; we can insert it second.
		 *
		 * Also, it's possible that the "chain" consists only of a DEAD tuple,
		 * in which case we should replace the DEAD tuple in-place.
		 */
		SpGistLeafTuple head;
		OffsetNumber offnum;

		head = (SpGistLeafTuple) FUNC3(current->page,
											 FUNC4(current->page, current->offnum));
		if (head->tupstate == SPGIST_LIVE)
		{
			leafTuple->nextOffset = head->nextOffset;
			offnum = FUNC10(state, current->page,
										  (Item) leafTuple, leafTuple->size,
										  NULL, false);

			/*
			 * re-get head of list because it could have been moved on page,
			 * and set new second element
			 */
			head = (SpGistLeafTuple) FUNC3(current->page,
												 FUNC4(current->page, current->offnum));
			head->nextOffset = offnum;

			xlrec.offnumLeaf = offnum;
			xlrec.offnumHeadLeaf = current->offnum;
		}
		else if (head->tupstate == SPGIST_DEAD)
		{
			leafTuple->nextOffset = InvalidOffsetNumber;
			FUNC5(current->page, current->offnum);
			if (FUNC2(current->page,
							(Item) leafTuple, leafTuple->size,
							current->offnum, false, false) != current->offnum)
				FUNC15(ERROR, "failed to add item of size %u to SPGiST index page",
					 leafTuple->size);

			/* WAL replay distinguishes this case by equal offnums */
			xlrec.offnumLeaf = current->offnum;
			xlrec.offnumHeadLeaf = current->offnum;
		}
		else
			FUNC15(ERROR, "unexpected SPGiST tuple state: %d", head->tupstate);
	}

	FUNC1(current->buffer);

	if (FUNC7(index) && !state->isBuild)
	{
		XLogRecPtr	recptr;
		int			flags;

		FUNC11();
		FUNC14((char *) &xlrec, sizeof(xlrec));
		FUNC14((char *) leafTuple, leafTuple->size);

		flags = REGBUF_STANDARD;
		if (xlrec.newPage)
			flags |= REGBUF_WILL_INIT;
		FUNC13(0, current->buffer, flags);
		if (xlrec.offnumParent != InvalidOffsetNumber)
			FUNC13(1, parent->buffer, REGBUF_STANDARD);

		recptr = FUNC12(RM_SPGIST_ID, XLOG_SPGIST_ADD_LEAF);

		FUNC6(current->page, recptr);

		/* update parent only if we actually changed it */
		if (xlrec.offnumParent != InvalidOffsetNumber)
		{
			FUNC6(parent->page, recptr);
		}
	}

	FUNC0();
}
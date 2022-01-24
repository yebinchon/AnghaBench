#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xlrec ;
struct TYPE_20__ {scalar_t__ offnum; int parentBlk; scalar_t__ offnumParent; scalar_t__ offnumNew; int newPage; scalar_t__ nodeI; int /*<<< orphan*/  stateSrc; } ;
typedef  TYPE_1__ spgxlogAddNode ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_24__ {scalar_t__ offnum; scalar_t__ buffer; scalar_t__ blkno; int /*<<< orphan*/  page; scalar_t__ node; } ;
struct TYPE_23__ {scalar_t__ size; } ;
struct TYPE_22__ {scalar_t__ size; } ;
struct TYPE_21__ {scalar_t__ isBuild; } ;
struct TYPE_19__ {int /*<<< orphan*/  nRedirection; int /*<<< orphan*/  nPlaceholder; } ;
typedef  TYPE_2__ SpGistState ;
typedef  TYPE_3__* SpGistInnerTuple ;
typedef  TYPE_4__* SpGistDeadTuple ;
typedef  TYPE_5__ SPPageDesc ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ InvalidBuffer ; 
 void* InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_SPGIST_ID ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPGIST_PLACEHOLDER ; 
 int /*<<< orphan*/  SPGIST_REDIRECT ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 TYPE_16__* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  XLOG_SPGIST_ADD_NODE ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,int) ; 
 TYPE_3__* FUNC24 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,TYPE_5__*,scalar_t__,scalar_t__) ; 
 TYPE_4__* FUNC27 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,void*) ; 

__attribute__((used)) static void
FUNC28(Relation index, SpGistState *state,
				 SpGistInnerTuple innerTuple,
				 SPPageDesc *current, SPPageDesc *parent,
				 int nodeN, Datum nodeLabel)
{
	SpGistInnerTuple newInnerTuple;
	spgxlogAddNode xlrec;

	/* Should not be applied to nulls */
	FUNC0(!FUNC17(current->page));

	/* Construct new inner tuple with additional node */
	newInnerTuple = FUNC24(state, innerTuple, nodeLabel, nodeN);

	/* Prepare WAL record */
	FUNC12(state, xlrec.stateSrc);
	xlrec.offnum = current->offnum;

	/* we don't fill these unless we need to change the parent downlink */
	xlrec.parentBlk = -1;
	xlrec.offnumParent = InvalidOffsetNumber;
	xlrec.nodeI = 0;

	/* we don't fill these unless tuple has to be moved */
	xlrec.offnumNew = InvalidOffsetNumber;
	xlrec.newPage = false;

	if (FUNC7(current->page) >=
		newInnerTuple->size - innerTuple->size)
	{
		/*
		 * We can replace the inner tuple by new version in-place
		 */
		FUNC11();

		FUNC8(current->page, current->offnum);
		if (FUNC6(current->page,
						(Item) newInnerTuple, newInnerTuple->size,
						current->offnum, false, false) != current->offnum)
			FUNC25(ERROR, "failed to add item of size %u to SPGiST index page",
				 newInnerTuple->size);

		FUNC5(current->buffer);

		if (FUNC10(index) && !state->isBuild)
		{
			XLogRecPtr	recptr;

			FUNC20();
			FUNC23((char *) &xlrec, sizeof(xlrec));
			FUNC23((char *) newInnerTuple, newInnerTuple->size);

			FUNC22(0, current->buffer, REGBUF_STANDARD);

			recptr = FUNC21(RM_SPGIST_ID, XLOG_SPGIST_ADD_NODE);

			FUNC9(current->page, recptr);
		}

		FUNC3();
	}
	else
	{
		/*
		 * move inner tuple to another page, and update parent
		 */
		SpGistDeadTuple dt;
		SPPageDesc	saveCurrent;

		/*
		 * It should not be possible to get here for the root page, since we
		 * allow only one inner tuple on the root page, and spgFormInnerTuple
		 * always checks that inner tuples don't exceed the size of a page.
		 */
		if (FUNC13(current->blkno))
			FUNC25(ERROR, "cannot enlarge root tuple any more");
		FUNC0(parent->buffer != InvalidBuffer);

		saveCurrent = *current;

		xlrec.offnumParent = parent->offnum;
		xlrec.nodeI = parent->node;

		/*
		 * obtain new buffer with the same parity as current, since it will be
		 * a child of same parent tuple
		 */
		current->buffer = FUNC14(index,
										  FUNC4(current->blkno),
										  newInnerTuple->size + sizeof(ItemIdData),
										  &xlrec.newPage);
		current->blkno = FUNC1(current->buffer);
		current->page = FUNC2(current->buffer);

		/*
		 * Let's just make real sure new current isn't same as old.  Right now
		 * that's impossible, but if SpGistGetBuffer ever got smart enough to
		 * delete placeholder tuples before checking space, maybe it wouldn't
		 * be impossible.  The case would appear to work except that WAL
		 * replay would be subtly wrong, so I think a mere assert isn't enough
		 * here.
		 */
		if (current->blkno == saveCurrent.blkno)
			FUNC25(ERROR, "SPGiST new buffer shouldn't be same as old buffer");

		/*
		 * New current and parent buffer will both be modified; but note that
		 * parent buffer could be same as either new or old current.
		 */
		if (parent->buffer == saveCurrent.buffer)
			xlrec.parentBlk = 0;
		else if (parent->buffer == current->buffer)
			xlrec.parentBlk = 1;
		else
			xlrec.parentBlk = 2;

		FUNC11();

		/* insert new ... */
		xlrec.offnumNew = current->offnum =
			FUNC15(state, current->page,
								 (Item) newInnerTuple, newInnerTuple->size,
								 NULL, false);

		FUNC5(current->buffer);

		/* update parent's downlink and mark parent page dirty */
		FUNC26(index, parent, current->blkno, current->offnum);

		/*
		 * Replace old tuple with a placeholder or redirection tuple.  Unless
		 * doing an index build, we have to insert a redirection tuple for
		 * possible concurrent scans.  We can't just delete it in any case,
		 * because that could change the offsets of other tuples on the page,
		 * breaking downlinks from their parents.
		 */
		if (state->isBuild)
			dt = FUNC27(state, SPGIST_PLACEHOLDER,
								  InvalidBlockNumber, InvalidOffsetNumber);
		else
			dt = FUNC27(state, SPGIST_REDIRECT,
								  current->blkno, current->offnum);

		FUNC8(saveCurrent.page, saveCurrent.offnum);
		if (FUNC6(saveCurrent.page, (Item) dt, dt->size,
						saveCurrent.offnum,
						false, false) != saveCurrent.offnum)
			FUNC25(ERROR, "failed to add item of size %u to SPGiST index page",
				 dt->size);

		if (state->isBuild)
			FUNC16(saveCurrent.page)->nPlaceholder++;
		else
			FUNC16(saveCurrent.page)->nRedirection++;

		FUNC5(saveCurrent.buffer);

		if (FUNC10(index) && !state->isBuild)
		{
			XLogRecPtr	recptr;
			int			flags;

			FUNC20();

			/* orig page */
			FUNC22(0, saveCurrent.buffer, REGBUF_STANDARD);
			/* new page */
			flags = REGBUF_STANDARD;
			if (xlrec.newPage)
				flags |= REGBUF_WILL_INIT;
			FUNC22(1, current->buffer, flags);
			/* parent page (if different from orig and new) */
			if (xlrec.parentBlk == 2)
				FUNC22(2, parent->buffer, REGBUF_STANDARD);

			FUNC23((char *) &xlrec, sizeof(xlrec));
			FUNC23((char *) newInnerTuple, newInnerTuple->size);

			recptr = FUNC21(RM_SPGIST_ID, XLOG_SPGIST_ADD_NODE);

			/* we don't bother to check if any of these are redundant */
			FUNC9(current->page, recptr);
			FUNC9(parent->page, recptr);
			FUNC9(saveCurrent.page, recptr);
		}

		FUNC3();

		/* Release saveCurrent if it's not same as current or parent */
		if (saveCurrent.buffer != current->buffer &&
			saveCurrent.buffer != parent->buffer)
		{
			FUNC18(index, saveCurrent.buffer);
			FUNC19(saveCurrent.buffer);
		}
	}
}
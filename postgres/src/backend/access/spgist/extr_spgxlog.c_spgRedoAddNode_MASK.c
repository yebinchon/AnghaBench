#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
struct TYPE_18__ {int parentBlk; scalar_t__ offnum; int /*<<< orphan*/  offnumNew; int /*<<< orphan*/  nodeI; int /*<<< orphan*/  offnumParent; scalar_t__ newPage; int /*<<< orphan*/  stateSrc; } ;
typedef  TYPE_1__ spgxlogAddNode ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_19__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_22__ {int /*<<< orphan*/  size; } ;
struct TYPE_21__ {int /*<<< orphan*/  size; } ;
struct TYPE_20__ {scalar_t__ isBuild; } ;
struct TYPE_17__ {int /*<<< orphan*/  nRedirection; int /*<<< orphan*/  nPlaceholder; } ;
typedef  TYPE_3__ SpGistState ;
typedef  TYPE_4__ SpGistInnerTupleData ;
typedef  scalar_t__ SpGistInnerTuple ;
typedef  TYPE_5__* SpGistDeadTuple ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPGIST_PLACEHOLDER ; 
 int /*<<< orphan*/  SPGIST_REDIRECT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_16__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,char*,int) ; 
 TYPE_5__* FUNC21 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC23(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	char	   *ptr = FUNC15(record);
	spgxlogAddNode *xldata = (spgxlogAddNode *) ptr;
	char	   *innerTuple;
	SpGistInnerTupleData innerTupleHdr;
	SpGistState state;
	Buffer		buffer;
	Page		page;
	XLogRedoAction action;

	ptr += sizeof(spgxlogAddNode);
	innerTuple = ptr;
	/* the tuple is unaligned, so make a copy to access its header */
	FUNC20(&innerTupleHdr, innerTuple, sizeof(SpGistInnerTupleData));

	FUNC19(&state, xldata->stateSrc);

	if (!FUNC16(record, 1))
	{
		/* update in place */
		FUNC0(xldata->parentBlk == -1);
		if (FUNC13(record, 0, &buffer) == BLK_NEEDS_REDO)
		{
			page = FUNC1(buffer);

			FUNC7(page, xldata->offnum);
			if (FUNC4(page, (Item) innerTuple, innerTupleHdr.size,
							xldata->offnum,
							false, false) != xldata->offnum)
				FUNC18(ERROR, "failed to add item of size %u to SPGiST index page",
					 innerTupleHdr.size);

			FUNC8(page, lsn);
			FUNC3(buffer);
		}
		if (FUNC2(buffer))
			FUNC11(buffer);
	}
	else
	{
		BlockNumber blkno;
		BlockNumber blknoNew;

		FUNC14(record, 0, NULL, NULL, &blkno);
		FUNC14(record, 1, NULL, NULL, &blknoNew);

		/*
		 * In normal operation we would have all three pages (source, dest,
		 * and parent) locked simultaneously; but in WAL replay it should be
		 * safe to update them one at a time, as long as we do it in the right
		 * order. We must insert the new tuple before replacing the old tuple
		 * with the redirect tuple.
		 */

		/* Install new tuple first so redirect is valid */
		if (xldata->newPage)
		{
			/* AddNode is not used for nulls pages */
			buffer = FUNC12(record, 1);
			FUNC9(buffer, 0);
			action = BLK_NEEDS_REDO;
		}
		else
			action = FUNC13(record, 1, &buffer);
		if (action == BLK_NEEDS_REDO)
		{
			page = FUNC1(buffer);

			FUNC17(page, (Item) innerTuple,
							  innerTupleHdr.size, xldata->offnumNew);

			/*
			 * If parent is in this same page, update it now.
			 */
			if (xldata->parentBlk == 1)
			{
				SpGistInnerTuple parentTuple;

				parentTuple = (SpGistInnerTuple) FUNC5(page,
															 FUNC6(page, xldata->offnumParent));

				FUNC22(parentTuple, xldata->nodeI,
								  blknoNew, xldata->offnumNew);
			}
			FUNC8(page, lsn);
			FUNC3(buffer);
		}
		if (FUNC2(buffer))
			FUNC11(buffer);

		/* Delete old tuple, replacing it with redirect or placeholder tuple */
		if (FUNC13(record, 0, &buffer) == BLK_NEEDS_REDO)
		{
			SpGistDeadTuple dt;

			page = FUNC1(buffer);

			if (state.isBuild)
				dt = FUNC21(&state, SPGIST_PLACEHOLDER,
									  InvalidBlockNumber,
									  InvalidOffsetNumber);
			else
				dt = FUNC21(&state, SPGIST_REDIRECT,
									  blknoNew,
									  xldata->offnumNew);

			FUNC7(page, xldata->offnum);
			if (FUNC4(page, (Item) dt, dt->size,
							xldata->offnum,
							false, false) != xldata->offnum)
				FUNC18(ERROR, "failed to add item of size %u to SPGiST index page",
					 dt->size);

			if (state.isBuild)
				FUNC10(page)->nPlaceholder++;
			else
				FUNC10(page)->nRedirection++;

			/*
			 * If parent is in this same page, update it now.
			 */
			if (xldata->parentBlk == 0)
			{
				SpGistInnerTuple parentTuple;

				parentTuple = (SpGistInnerTuple) FUNC5(page,
															 FUNC6(page, xldata->offnumParent));

				FUNC22(parentTuple, xldata->nodeI,
								  blknoNew, xldata->offnumNew);
			}
			FUNC8(page, lsn);
			FUNC3(buffer);
		}
		if (FUNC2(buffer))
			FUNC11(buffer);

		/*
		 * Update parent downlink (if we didn't do it as part of the source or
		 * destination page update already).
		 */
		if (xldata->parentBlk == 2)
		{
			if (FUNC13(record, 2, &buffer) == BLK_NEEDS_REDO)
			{
				SpGistInnerTuple parentTuple;

				page = FUNC1(buffer);

				parentTuple = (SpGistInnerTuple) FUNC5(page,
															 FUNC6(page, xldata->offnumParent));

				FUNC22(parentTuple, xldata->nodeI,
								  blknoNew, xldata->offnumNew);

				FUNC8(page, lsn);
				FUNC3(buffer);
			}
			if (FUNC2(buffer))
				FUNC11(buffer);
		}
	}
}
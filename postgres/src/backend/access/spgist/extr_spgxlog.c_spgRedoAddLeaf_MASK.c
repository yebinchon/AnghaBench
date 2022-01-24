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
struct TYPE_11__ {scalar_t__ offnumLeaf; scalar_t__ offnumHeadLeaf; scalar_t__ offnumParent; int /*<<< orphan*/  nodeI; scalar_t__ storesNulls; scalar_t__ newPage; } ;
typedef  TYPE_1__ spgxlogAddLeaf ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_12__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_14__ {scalar_t__ nextOffset; } ;
struct TYPE_13__ {scalar_t__ nextOffset; int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ SpGistLeafTupleData ;
typedef  TYPE_4__* SpGistLeafTuple ;
typedef  scalar_t__ SpGistInnerTuple ;
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
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SPGIST_LEAF ; 
 int SPGIST_NULLS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC19(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	char	   *ptr = FUNC14(record);
	spgxlogAddLeaf *xldata = (spgxlogAddLeaf *) ptr;
	char	   *leafTuple;
	SpGistLeafTupleData leafTupleHdr;
	Buffer		buffer;
	Page		page;
	XLogRedoAction action;

	ptr += sizeof(spgxlogAddLeaf);
	leafTuple = ptr;
	/* the leaf tuple is unaligned, so make a copy to access its header */
	FUNC17(&leafTupleHdr, leafTuple, sizeof(SpGistLeafTupleData));

	/*
	 * In normal operation we would have both current and parent pages locked
	 * simultaneously; but in WAL replay it should be safe to update the leaf
	 * page before updating the parent.
	 */
	if (xldata->newPage)
	{
		buffer = FUNC11(record, 0);
		FUNC9(buffer,
						 SPGIST_LEAF | (xldata->storesNulls ? SPGIST_NULLS : 0));
		action = BLK_NEEDS_REDO;
	}
	else
		action = FUNC12(record, 0, &buffer);

	if (action == BLK_NEEDS_REDO)
	{
		page = FUNC1(buffer);

		/* insert new tuple */
		if (xldata->offnumLeaf != xldata->offnumHeadLeaf)
		{
			/* normal cases, tuple was added by SpGistPageAddNewItem */
			FUNC15(page, (Item) leafTuple, leafTupleHdr.size,
							  xldata->offnumLeaf);

			/* update head tuple's chain link if needed */
			if (xldata->offnumHeadLeaf != InvalidOffsetNumber)
			{
				SpGistLeafTuple head;

				head = (SpGistLeafTuple) FUNC5(page,
													 FUNC6(page, xldata->offnumHeadLeaf));
				FUNC0(head->nextOffset == leafTupleHdr.nextOffset);
				head->nextOffset = xldata->offnumLeaf;
			}
		}
		else
		{
			/* replacing a DEAD tuple */
			FUNC7(page, xldata->offnumLeaf);
			if (FUNC4(page,
							(Item) leafTuple, leafTupleHdr.size,
							xldata->offnumLeaf, false, false) != xldata->offnumLeaf)
				FUNC16(ERROR, "failed to add item of size %u to SPGiST index page",
					 leafTupleHdr.size);
		}

		FUNC8(page, lsn);
		FUNC3(buffer);
	}
	if (FUNC2(buffer))
		FUNC10(buffer);

	/* update parent downlink if necessary */
	if (xldata->offnumParent != InvalidOffsetNumber)
	{
		if (FUNC12(record, 1, &buffer) == BLK_NEEDS_REDO)
		{
			SpGistInnerTuple tuple;
			BlockNumber blknoLeaf;

			FUNC13(record, 0, NULL, NULL, &blknoLeaf);

			page = FUNC1(buffer);

			tuple = (SpGistInnerTuple) FUNC5(page,
												   FUNC6(page, xldata->offnumParent));

			FUNC18(tuple, xldata->nodeI,
							  blknoLeaf, xldata->offnumLeaf);

			FUNC8(page, lsn);
			FUNC3(buffer);
		}
		if (FUNC2(buffer))
			FUNC10(buffer);
	}
}
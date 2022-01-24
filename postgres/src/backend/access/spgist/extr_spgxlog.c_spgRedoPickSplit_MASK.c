#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8 ;
struct TYPE_15__ {int nDelete; int nInsert; scalar_t__ isRootSplit; scalar_t__ innerIsParent; int /*<<< orphan*/  offnumInner; int /*<<< orphan*/  nodeI; int /*<<< orphan*/  offnumParent; scalar_t__ storesNulls; scalar_t__ initInner; scalar_t__ initDest; scalar_t__ initSrc; int /*<<< orphan*/  stateSrc; } ;
typedef  TYPE_1__ spgxlogPickSplit ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_16__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_18__ {int /*<<< orphan*/  size; } ;
struct TYPE_17__ {int /*<<< orphan*/  isBuild; } ;
typedef  TYPE_3__ SpGistState ;
typedef  TYPE_4__ SpGistLeafTupleData ;
typedef  TYPE_4__ SpGistInnerTupleData ;
typedef  scalar_t__ SpGistInnerTuple ;
typedef  int /*<<< orphan*/ * Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SPGIST_LEAF ; 
 int SPGIST_NULLS ; 
 int /*<<< orphan*/  SPGIST_PLACEHOLDER ; 
 int /*<<< orphan*/  SPGIST_REDIRECT ; 
 int /*<<< orphan*/  SizeOfSpgxlogPickSplit ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	char	   *ptr = FUNC12(record);
	spgxlogPickSplit *xldata = (spgxlogPickSplit *) ptr;
	char	   *innerTuple;
	SpGistInnerTupleData innerTupleHdr;
	SpGistState state;
	OffsetNumber *toDelete;
	OffsetNumber *toInsert;
	uint8	   *leafPageSelect;
	Buffer		srcBuffer;
	Buffer		destBuffer;
	Buffer		innerBuffer;
	Page		srcPage;
	Page		destPage;
	Page		page;
	int			i;
	BlockNumber blknoInner;
	XLogRedoAction action;

	FUNC11(record, 2, NULL, NULL, &blknoInner);

	FUNC15(&state, xldata->stateSrc);

	ptr += SizeOfSpgxlogPickSplit;
	toDelete = (OffsetNumber *) ptr;
	ptr += sizeof(OffsetNumber) * xldata->nDelete;
	toInsert = (OffsetNumber *) ptr;
	ptr += sizeof(OffsetNumber) * xldata->nInsert;
	leafPageSelect = (uint8 *) ptr;
	ptr += sizeof(uint8) * xldata->nInsert;

	innerTuple = ptr;
	/* the inner tuple is unaligned, so make a copy to access its header */
	FUNC16(&innerTupleHdr, innerTuple, sizeof(SpGistInnerTupleData));
	ptr += innerTupleHdr.size;

	/* now ptr points to the list of leaf tuples */

	if (xldata->isRootSplit)
	{
		/* when splitting root, we touch it only in the guise of new inner */
		srcBuffer = InvalidBuffer;
		srcPage = NULL;
	}
	else if (xldata->initSrc)
	{
		/* just re-init the source page */
		srcBuffer = FUNC9(record, 0);
		srcPage = (Page) FUNC1(srcBuffer);

		FUNC7(srcBuffer,
						 SPGIST_LEAF | (xldata->storesNulls ? SPGIST_NULLS : 0));
		/* don't update LSN etc till we're done with it */
	}
	else
	{
		/*
		 * Delete the specified tuples from source page.  (In case we're in
		 * Hot Standby, we need to hold lock on the page till we're done
		 * inserting leaf tuples and the new inner tuple, else the added
		 * redirect tuple will be a dangling link.)
		 */
		srcPage = NULL;
		if (FUNC10(record, 0, &srcBuffer) == BLK_NEEDS_REDO)
		{
			srcPage = FUNC1(srcBuffer);

			/*
			 * We have it a bit easier here than in doPickSplit(), because we
			 * know the inner tuple's location already, so we can inject the
			 * correct redirection tuple now.
			 */
			if (!state.isBuild)
				FUNC17(&state, srcPage,
										toDelete, xldata->nDelete,
										SPGIST_REDIRECT,
										SPGIST_PLACEHOLDER,
										blknoInner,
										xldata->offnumInner);
			else
				FUNC17(&state, srcPage,
										toDelete, xldata->nDelete,
										SPGIST_PLACEHOLDER,
										SPGIST_PLACEHOLDER,
										InvalidBlockNumber,
										InvalidOffsetNumber);

			/* don't update LSN etc till we're done with it */
		}
	}

	/* try to access dest page if any */
	if (!FUNC13(record, 1))
	{
		destBuffer = InvalidBuffer;
		destPage = NULL;
	}
	else if (xldata->initDest)
	{
		/* just re-init the dest page */
		destBuffer = FUNC9(record, 1);
		destPage = (Page) FUNC1(destBuffer);

		FUNC7(destBuffer,
						 SPGIST_LEAF | (xldata->storesNulls ? SPGIST_NULLS : 0));
		/* don't update LSN etc till we're done with it */
	}
	else
	{
		/*
		 * We could probably release the page lock immediately in the
		 * full-page-image case, but for safety let's hold it till later.
		 */
		if (FUNC10(record, 1, &destBuffer) == BLK_NEEDS_REDO)
			destPage = (Page) FUNC1(destBuffer);
		else
			destPage = NULL;	/* don't do any page updates */
	}

	/* restore leaf tuples to src and/or dest page */
	for (i = 0; i < xldata->nInsert; i++)
	{
		char	   *leafTuple;
		SpGistLeafTupleData leafTupleHdr;

		/* the tuples are not aligned, so must copy to access the size field. */
		leafTuple = ptr;
		FUNC16(&leafTupleHdr, leafTuple, sizeof(SpGistLeafTupleData));
		ptr += leafTupleHdr.size;

		page = leafPageSelect[i] ? destPage : srcPage;
		if (page == NULL)
			continue;			/* no need to touch this page */

		FUNC14(page, (Item) leafTuple, leafTupleHdr.size,
						  toInsert[i]);
	}

	/* Now update src and dest page LSNs if needed */
	if (srcPage != NULL)
	{
		FUNC6(srcPage, lsn);
		FUNC3(srcBuffer);
	}
	if (destPage != NULL)
	{
		FUNC6(destPage, lsn);
		FUNC3(destBuffer);
	}

	/* restore new inner tuple */
	if (xldata->initInner)
	{
		innerBuffer = FUNC9(record, 2);
		FUNC7(innerBuffer, (xldata->storesNulls ? SPGIST_NULLS : 0));
		action = BLK_NEEDS_REDO;
	}
	else
		action = FUNC10(record, 2, &innerBuffer);

	if (action == BLK_NEEDS_REDO)
	{
		page = FUNC1(innerBuffer);

		FUNC14(page, (Item) innerTuple, innerTupleHdr.size,
						  xldata->offnumInner);

		/* if inner is also parent, update link while we're here */
		if (xldata->innerIsParent)
		{
			SpGistInnerTuple parent;

			parent = (SpGistInnerTuple) FUNC4(page,
													FUNC5(page, xldata->offnumParent));
			FUNC18(parent, xldata->nodeI,
							  blknoInner, xldata->offnumInner);
		}

		FUNC6(page, lsn);
		FUNC3(innerBuffer);
	}
	if (FUNC2(innerBuffer))
		FUNC8(innerBuffer);

	/*
	 * Now we can release the leaf-page locks.  It's okay to do this before
	 * updating the parent downlink.
	 */
	if (FUNC2(srcBuffer))
		FUNC8(srcBuffer);
	if (FUNC2(destBuffer))
		FUNC8(destBuffer);

	/* update parent downlink, unless we did it above */
	if (FUNC13(record, 3))
	{
		Buffer		parentBuffer;

		if (FUNC10(record, 3, &parentBuffer) == BLK_NEEDS_REDO)
		{
			SpGistInnerTuple parent;

			page = FUNC1(parentBuffer);

			parent = (SpGistInnerTuple) FUNC4(page,
													FUNC5(page, xldata->offnumParent));
			FUNC18(parent, xldata->nodeI,
							  blknoInner, xldata->offnumInner);

			FUNC6(page, lsn);
			FUNC3(parentBuffer);
		}
		if (FUNC2(parentBuffer))
			FUNC8(parentBuffer);
	}
	else
		FUNC0(xldata->innerIsParent || xldata->isRootSplit);
}
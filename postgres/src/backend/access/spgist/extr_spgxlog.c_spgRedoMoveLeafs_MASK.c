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
struct TYPE_13__ {int nMoves; int /*<<< orphan*/  nodeI; int /*<<< orphan*/  offnumParent; scalar_t__ storesNulls; scalar_t__ newPage; scalar_t__ replaceDead; int /*<<< orphan*/  stateSrc; } ;
typedef  TYPE_1__ spgxlogMoveLeafs ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_14__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_16__ {int /*<<< orphan*/  size; } ;
struct TYPE_15__ {scalar_t__ isBuild; } ;
typedef  TYPE_3__ SpGistState ;
typedef  TYPE_4__ SpGistLeafTupleData ;
typedef  scalar_t__ SpGistInnerTuple ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SPGIST_LEAF ; 
 int SPGIST_NULLS ; 
 int /*<<< orphan*/  SPGIST_PLACEHOLDER ; 
 int /*<<< orphan*/  SPGIST_REDIRECT ; 
 int /*<<< orphan*/  SizeOfSpgxlogMoveLeafs ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	char	   *ptr = FUNC11(record);
	spgxlogMoveLeafs *xldata = (spgxlogMoveLeafs *) ptr;
	SpGistState state;
	OffsetNumber *toDelete;
	OffsetNumber *toInsert;
	int			nInsert;
	Buffer		buffer;
	Page		page;
	XLogRedoAction action;
	BlockNumber blknoDst;

	FUNC10(record, 1, NULL, NULL, &blknoDst);

	FUNC13(&state, xldata->stateSrc);

	nInsert = xldata->replaceDead ? 1 : xldata->nMoves + 1;

	ptr += SizeOfSpgxlogMoveLeafs;
	toDelete = (OffsetNumber *) ptr;
	ptr += sizeof(OffsetNumber) * xldata->nMoves;
	toInsert = (OffsetNumber *) ptr;
	ptr += sizeof(OffsetNumber) * nInsert;

	/* now ptr points to the list of leaf tuples */

	/*
	 * In normal operation we would have all three pages (source, dest, and
	 * parent) locked simultaneously; but in WAL replay it should be safe to
	 * update them one at a time, as long as we do it in the right order.
	 */

	/* Insert tuples on the dest page (do first, so redirect is valid) */
	if (xldata->newPage)
	{
		buffer = FUNC8(record, 1);
		FUNC6(buffer,
						 SPGIST_LEAF | (xldata->storesNulls ? SPGIST_NULLS : 0));
		action = BLK_NEEDS_REDO;
	}
	else
		action = FUNC9(record, 1, &buffer);

	if (action == BLK_NEEDS_REDO)
	{
		int			i;

		page = FUNC0(buffer);

		for (i = 0; i < nInsert; i++)
		{
			char	   *leafTuple;
			SpGistLeafTupleData leafTupleHdr;

			/*
			 * the tuples are not aligned, so must copy to access the size
			 * field.
			 */
			leafTuple = ptr;
			FUNC14(&leafTupleHdr, leafTuple,
				   sizeof(SpGistLeafTupleData));

			FUNC12(page, (Item) leafTuple,
							  leafTupleHdr.size, toInsert[i]);
			ptr += leafTupleHdr.size;
		}

		FUNC5(page, lsn);
		FUNC2(buffer);
	}
	if (FUNC1(buffer))
		FUNC7(buffer);

	/* Delete tuples from the source page, inserting a redirection pointer */
	if (FUNC9(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		page = FUNC0(buffer);

		FUNC15(&state, page, toDelete, xldata->nMoves,
								state.isBuild ? SPGIST_PLACEHOLDER : SPGIST_REDIRECT,
								SPGIST_PLACEHOLDER,
								blknoDst,
								toInsert[nInsert - 1]);

		FUNC5(page, lsn);
		FUNC2(buffer);
	}
	if (FUNC1(buffer))
		FUNC7(buffer);

	/* And update the parent downlink */
	if (FUNC9(record, 2, &buffer) == BLK_NEEDS_REDO)
	{
		SpGistInnerTuple tuple;

		page = FUNC0(buffer);

		tuple = (SpGistInnerTuple) FUNC3(page,
											   FUNC4(page, xldata->offnumParent));

		FUNC16(tuple, xldata->nodeI,
						  blknoDst, toInsert[nInsert - 1]);

		FUNC5(page, lsn);
		FUNC2(buffer);
	}
	if (FUNC1(buffer))
		FUNC7(buffer);
}
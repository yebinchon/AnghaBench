#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int nMoves; int replaceDead; int storesNulls; int offnumParent; scalar_t__ newPage; int /*<<< orphan*/  nodeI; int /*<<< orphan*/  stateSrc; } ;
typedef  TYPE_1__ spgxlogMoveLeafs ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_17__ {scalar_t__ buffer; int offnum; scalar_t__ blkno; int /*<<< orphan*/  page; int /*<<< orphan*/  node; } ;
struct TYPE_16__ {int size; scalar_t__ tupstate; int nextOffset; } ;
struct TYPE_15__ {scalar_t__ isBuild; } ;
typedef  TYPE_2__ SpGistState ;
typedef  TYPE_3__* SpGistLeafTuple ;
typedef  TYPE_4__ SPPageDesc ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int /*<<< orphan*/  Item ;
typedef  scalar_t__ Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERROR ; 
 int FirstOffsetNumber ; 
 int GBUF_LEAF ; 
 int GBUF_NULLS ; 
 scalar_t__ InvalidBuffer ; 
 int InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_SPGIST_ID ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPGIST_DEAD ; 
 scalar_t__ SPGIST_LIVE ; 
 int /*<<< orphan*/  SPGIST_PLACEHOLDER ; 
 int /*<<< orphan*/  SPGIST_REDIRECT ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int SizeOfSpgxlogMoveLeafs ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  XLOG_SPGIST_MOVE_LEAFS ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char*,TYPE_3__*,int) ; 
 char* FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC25(Relation index, SpGistState *state,
		  SPPageDesc *current, SPPageDesc *parent,
		  SpGistLeafTuple newLeafTuple, bool isNulls)
{
	int			i,
				nDelete,
				nInsert,
				size;
	Buffer		nbuf;
	Page		npage;
	SpGistLeafTuple it;
	OffsetNumber r = InvalidOffsetNumber,
				startOffset = InvalidOffsetNumber;
	bool		replaceDead = false;
	OffsetNumber *toDelete;
	OffsetNumber *toInsert;
	BlockNumber nblkno;
	spgxlogMoveLeafs xlrec;
	char	   *leafdata,
			   *leafptr;

	/* This doesn't work on root page */
	FUNC0(parent->buffer != InvalidBuffer);
	FUNC0(parent->buffer != current->buffer);

	/* Locate the tuples to be moved, and count up the space needed */
	i = FUNC7(current->page);
	toDelete = (OffsetNumber *) FUNC22(sizeof(OffsetNumber) * i);
	toInsert = (OffsetNumber *) FUNC22(sizeof(OffsetNumber) * (i + 1));

	size = newLeafTuple->size + sizeof(ItemIdData);

	nDelete = 0;
	i = current->offnum;
	while (i != InvalidOffsetNumber)
	{
		SpGistLeafTuple it;

		FUNC0(i >= FirstOffsetNumber &&
			   i <= FUNC7(current->page));
		it = (SpGistLeafTuple) FUNC5(current->page,
										   FUNC6(current->page, i));

		if (it->tupstate == SPGIST_LIVE)
		{
			toDelete[nDelete] = i;
			size += it->size + sizeof(ItemIdData);
			nDelete++;
		}
		else if (it->tupstate == SPGIST_DEAD)
		{
			/* We could see a DEAD tuple as first/only chain item */
			FUNC0(i == current->offnum);
			FUNC0(it->nextOffset == InvalidOffsetNumber);
			/* We don't want to move it, so don't count it in size */
			toDelete[nDelete] = i;
			nDelete++;
			replaceDead = true;
		}
		else
			FUNC20(ERROR, "unexpected SPGiST tuple state: %d", it->tupstate);

		i = it->nextOffset;
	}

	/* Find a leaf page that will hold them */
	nbuf = FUNC12(index, GBUF_LEAF | (isNulls ? GBUF_NULLS : 0),
						   size, &xlrec.newPage);
	npage = FUNC2(nbuf);
	nblkno = FUNC1(nbuf);
	FUNC0(nblkno != current->blkno);

	leafdata = leafptr = FUNC22(size);

	FUNC10();

	/* copy all the old tuples to new page, unless they're dead */
	nInsert = 0;
	if (!replaceDead)
	{
		for (i = 0; i < nDelete; i++)
		{
			it = (SpGistLeafTuple) FUNC5(current->page,
											   FUNC6(current->page, toDelete[i]));
			FUNC0(it->tupstate == SPGIST_LIVE);

			/*
			 * Update chain link (notice the chain order gets reversed, but we
			 * don't care).  We're modifying the tuple on the source page
			 * here, but it's okay since we're about to delete it.
			 */
			it->nextOffset = r;

			r = FUNC13(state, npage, (Item) it, it->size,
									 &startOffset, false);

			toInsert[nInsert] = r;
			nInsert++;

			/* save modified tuple into leafdata as well */
			FUNC21(leafptr, it, it->size);
			leafptr += it->size;
		}
	}

	/* add the new tuple as well */
	newLeafTuple->nextOffset = r;
	r = FUNC13(state, npage,
							 (Item) newLeafTuple, newLeafTuple->size,
							 &startOffset, false);
	toInsert[nInsert] = r;
	nInsert++;
	FUNC21(leafptr, newLeafTuple, newLeafTuple->size);
	leafptr += newLeafTuple->size;

	/*
	 * Now delete the old tuples, leaving a redirection pointer behind for the
	 * first one, unless we're doing an index build; in which case there can't
	 * be any concurrent scan so we need not provide a redirect.
	 */
	FUNC24(state, current->page, toDelete, nDelete,
							state->isBuild ? SPGIST_PLACEHOLDER : SPGIST_REDIRECT,
							SPGIST_PLACEHOLDER,
							nblkno, r);

	/* Update parent's downlink and mark parent page dirty */
	FUNC23(index, parent, nblkno, r);

	/* Mark the leaf pages too */
	FUNC4(current->buffer);
	FUNC4(nbuf);

	if (FUNC9(index) && !state->isBuild)
	{
		XLogRecPtr	recptr;

		/* prepare WAL info */
		FUNC11(state, xlrec.stateSrc);

		xlrec.nMoves = nDelete;
		xlrec.replaceDead = replaceDead;
		xlrec.storesNulls = isNulls;

		xlrec.offnumParent = parent->offnum;
		xlrec.nodeI = parent->node;

		FUNC16();
		FUNC19((char *) &xlrec, SizeOfSpgxlogMoveLeafs);
		FUNC19((char *) toDelete,
						 sizeof(OffsetNumber) * nDelete);
		FUNC19((char *) toInsert,
						 sizeof(OffsetNumber) * nInsert);
		FUNC19((char *) leafdata, leafptr - leafdata);

		FUNC18(0, current->buffer, REGBUF_STANDARD);
		FUNC18(1, nbuf, REGBUF_STANDARD | (xlrec.newPage ? REGBUF_WILL_INIT : 0));
		FUNC18(2, parent->buffer, REGBUF_STANDARD);

		recptr = FUNC17(RM_SPGIST_ID, XLOG_SPGIST_MOVE_LEAFS);

		FUNC8(current->page, recptr);
		FUNC8(npage, recptr);
		FUNC8(parent->page, recptr);
	}

	FUNC3();

	/* Update local free-space cache and release new buffer */
	FUNC14(index, nbuf);
	FUNC15(nbuf);
}
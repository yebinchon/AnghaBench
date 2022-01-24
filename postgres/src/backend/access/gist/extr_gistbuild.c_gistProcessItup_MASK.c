#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  indexrel; int /*<<< orphan*/ * gfbb; int /*<<< orphan*/ * giststate; } ;
struct TYPE_13__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__* IndexTuple ;
typedef  int /*<<< orphan*/  GISTSTATE ;
typedef  int /*<<< orphan*/  GISTNodeBuffer ;
typedef  TYPE_2__ GISTBuildState ;
typedef  int /*<<< orphan*/  GISTBuildBuffers ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  GIST_EXCLUSIVE ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int,TYPE_1__**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC17(GISTBuildState *buildstate, IndexTuple itup,
				BlockNumber startblkno, int startlevel)
{
	GISTSTATE  *giststate = buildstate->giststate;
	GISTBuildBuffers *gfbb = buildstate->gfbb;
	Relation	indexrel = buildstate->indexrel;
	BlockNumber childblkno;
	Buffer		buffer;
	bool		result = false;
	BlockNumber blkno;
	int			level;
	OffsetNumber downlinkoffnum = InvalidOffsetNumber;
	BlockNumber parentblkno = InvalidBlockNumber;

	FUNC3();

	/*
	 * Loop until we reach a leaf page (level == 0) or a level with buffers
	 * (not including the level we start at, because we would otherwise make
	 * no progress).
	 */
	blkno = startblkno;
	level = startlevel;
	for (;;)
	{
		ItemId		iid;
		IndexTuple	idxtuple,
					newtup;
		Page		page;
		OffsetNumber childoffnum;

		/* Have we reached a level with buffers? */
		if (FUNC5(level, gfbb) && level != startlevel)
			break;

		/* Have we reached a leaf page? */
		if (level == 0)
			break;

		/*
		 * Nope. Descend down to the next level then. Choose a child to
		 * descend down to.
		 */

		buffer = FUNC9(indexrel, blkno);
		FUNC6(buffer, GIST_EXCLUSIVE);

		page = (Page) FUNC2(buffer);
		childoffnum = FUNC15(indexrel, page, itup, giststate);
		iid = FUNC8(page, childoffnum);
		idxtuple = (IndexTuple) FUNC7(page, iid);
		childblkno = FUNC4(&(idxtuple->t_tid));

		if (level > 1)
			FUNC12(buildstate, childblkno, blkno);

		/*
		 * Check that the key representing the target child node is consistent
		 * with the key we're inserting. Update it if it's not.
		 */
		newtup = FUNC16(indexrel, idxtuple, itup, giststate);
		if (newtup)
		{
			blkno = FUNC14(buildstate,
											  buffer,
											  level,
											  &newtup,
											  1,
											  childoffnum,
											  InvalidBlockNumber,
											  InvalidOffsetNumber);
			/* gistbufferinginserttuples() released the buffer */
		}
		else
			FUNC10(buffer);

		/* Descend to the child */
		parentblkno = blkno;
		blkno = childblkno;
		downlinkoffnum = childoffnum;
		FUNC0(level > 0);
		level--;
	}

	if (FUNC5(level, gfbb))
	{
		/*
		 * We've reached level with buffers. Place the index tuple to the
		 * buffer, and add the buffer to the emptying queue if it overflows.
		 */
		GISTNodeBuffer *childNodeBuffer;

		/* Find the buffer or create a new one */
		childNodeBuffer = FUNC11(gfbb, giststate, blkno, level);

		/* Add index tuple to it */
		FUNC13(gfbb, childNodeBuffer, itup);

		if (FUNC1(childNodeBuffer, gfbb))
			result = true;
	}
	else
	{
		/*
		 * We've reached a leaf page. Place the tuple here.
		 */
		FUNC0(level == 0);
		buffer = FUNC9(indexrel, blkno);
		FUNC6(buffer, GIST_EXCLUSIVE);
		FUNC14(buildstate, buffer, level,
								  &itup, 1, InvalidOffsetNumber,
								  parentblkno, downlinkoffnum);
		/* gistbufferinginserttuples() released the buffer */
	}

	return result;
}
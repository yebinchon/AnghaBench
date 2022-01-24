#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ btpo_next; } ;
struct TYPE_8__ {scalar_t__ bts_blkno; scalar_t__ bts_offset; int /*<<< orphan*/  bts_parent; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;
typedef  TYPE_1__* BTStack ;
typedef  TYPE_2__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  BT_WRITE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Buffer
FUNC15(Relation rel, BTStack stack, BlockNumber child)
{
	BlockNumber blkno;
	OffsetNumber start;

	blkno = stack->bts_blkno;
	start = stack->bts_offset;

	for (;;)
	{
		Buffer		buf;
		Page		page;
		BTPageOpaque opaque;

		buf = FUNC13(rel, blkno, BT_WRITE);
		page = FUNC1(buf);
		opaque = (BTPageOpaque) FUNC11(page);

		if (FUNC6(opaque))
		{
			FUNC12(rel, buf, stack->bts_parent);
			continue;
		}

		if (!FUNC5(opaque))
		{
			OffsetNumber offnum,
						minoff,
						maxoff;
			ItemId		itemid;
			IndexTuple	item;

			minoff = FUNC4(opaque);
			maxoff = FUNC10(page);

			/*
			 * start = InvalidOffsetNumber means "search the whole page". We
			 * need this test anyway due to possibility that page has a high
			 * key now when it didn't before.
			 */
			if (start < minoff)
				start = minoff;

			/*
			 * Need this check too, to guard against possibility that page
			 * split since we visited it originally.
			 */
			if (start > maxoff)
				start = FUNC2(maxoff);

			/*
			 * These loops will check every item on the page --- but in an
			 * order that's attuned to the probability of where it actually
			 * is.  Scan to the right first, then to the left.
			 */
			for (offnum = start;
				 offnum <= maxoff;
				 offnum = FUNC2(offnum))
			{
				itemid = FUNC9(page, offnum);
				item = (IndexTuple) FUNC8(page, itemid);

				if (FUNC0(item) == child)
				{
					/* Return accurate pointer to where link is now */
					stack->bts_blkno = blkno;
					stack->bts_offset = offnum;
					return buf;
				}
			}

			for (offnum = FUNC3(start);
				 offnum >= minoff;
				 offnum = FUNC3(offnum))
			{
				itemid = FUNC9(page, offnum);
				item = (IndexTuple) FUNC8(page, itemid);

				if (FUNC0(item) == child)
				{
					/* Return accurate pointer to where link is now */
					stack->bts_blkno = blkno;
					stack->bts_offset = offnum;
					return buf;
				}
			}
		}

		/*
		 * The item we're looking for moved right at least one page.
		 *
		 * Lehman and Yao couple/chain locks when moving right here, which we
		 * can avoid.  See nbtree/README.
		 */
		if (FUNC7(opaque))
		{
			FUNC14(rel, buf);
			return InvalidBuffer;
		}
		blkno = opaque->btpo_next;
		start = InvalidOffsetNumber;
		FUNC14(rel, buf);
	}
}
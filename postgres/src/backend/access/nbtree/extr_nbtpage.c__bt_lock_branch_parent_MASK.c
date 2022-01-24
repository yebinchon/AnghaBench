#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ btpo_next; scalar_t__ btpo_prev; } ;
struct TYPE_9__ {scalar_t__ bts_blkno; scalar_t__ bts_offset; struct TYPE_9__* bts_parent; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  scalar_t__ Buffer ;
typedef  scalar_t__ BlockNumber ;
typedef  TYPE_1__* BTStack ;
typedef  TYPE_2__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  BT_READ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidBuffer ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ P_NONE ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool
FUNC14(Relation rel, BlockNumber child, BTStack stack,
					   Buffer *topparent, OffsetNumber *topoff,
					   BlockNumber *target, BlockNumber *rightsib)
{
	BlockNumber parent;
	OffsetNumber poffset,
				maxoff;
	Buffer		pbuf;
	Page		page;
	BTPageOpaque opaque;
	BlockNumber leftsib;

	/*
	 * Locate the downlink of "child" in the parent, updating the stack entry
	 * if needed.  This is how !heapkeyspace indexes deal with having
	 * non-unique high keys in leaf level pages.  Even heapkeyspace indexes
	 * can have a stale stack due to insertions into the parent.
	 */
	pbuf = FUNC9(rel, stack, child);
	if (pbuf == InvalidBuffer)
		FUNC11(ERROR,
				(FUNC12(ERRCODE_INDEX_CORRUPTED),
				 FUNC13("failed to re-find parent key in index \"%s\" for deletion target page %u",
								 FUNC7(rel), child)));
	parent = stack->bts_blkno;
	poffset = stack->bts_offset;

	page = FUNC0(pbuf);
	opaque = (BTPageOpaque) FUNC6(page);
	maxoff = FUNC5(page);

	/*
	 * If the target is the rightmost child of its parent, then we can't
	 * delete, unless it's also the only child.
	 */
	if (poffset >= maxoff)
	{
		/* It's rightmost child... */
		if (poffset == FUNC1(opaque))
		{
			/*
			 * It's only child, so safe if parent would itself be removable.
			 * We have to check the parent itself, and then recurse to test
			 * the conditions at the parent's parent.
			 */
			if (FUNC4(opaque) || FUNC3(opaque) ||
				FUNC2(opaque))
			{
				FUNC10(rel, pbuf);
				return false;
			}

			*target = parent;
			*rightsib = opaque->btpo_next;
			leftsib = opaque->btpo_prev;

			FUNC10(rel, pbuf);

			/*
			 * Like in _bt_pagedel, check that the left sibling is not marked
			 * with INCOMPLETE_SPLIT flag.  That would mean that there is no
			 * downlink to the page to be deleted, and the page deletion
			 * algorithm isn't prepared to handle that.
			 */
			if (leftsib != P_NONE)
			{
				Buffer		lbuf;
				Page		lpage;
				BTPageOpaque lopaque;

				lbuf = FUNC8(rel, leftsib, BT_READ);
				lpage = FUNC0(lbuf);
				lopaque = (BTPageOpaque) FUNC6(lpage);

				/*
				 * If the left sibling was concurrently split, so that its
				 * next-pointer doesn't point to the current page anymore, the
				 * split that created the current page must be completed. (We
				 * don't allow splitting an incompletely split page again
				 * until the previous split has been completed)
				 */
				if (lopaque->btpo_next == parent &&
					FUNC2(lopaque))
				{
					FUNC10(rel, lbuf);
					return false;
				}
				FUNC10(rel, lbuf);
			}

			return FUNC14(rel, parent, stack->bts_parent,
										  topparent, topoff, target, rightsib);
		}
		else
		{
			/* Unsafe to delete */
			FUNC10(rel, pbuf);
			return false;
		}
	}
	else
	{
		/* Not rightmost child, so safe to delete */
		*topparent = pbuf;
		*topoff = poffset;
		return true;
	}
}
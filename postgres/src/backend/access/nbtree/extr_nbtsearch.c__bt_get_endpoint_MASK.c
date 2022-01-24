#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_6__ {scalar_t__ level; } ;
struct TYPE_7__ {scalar_t__ btpo_next; TYPE_1__ btpo; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;
typedef  TYPE_2__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  BT_READ ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ P_NONE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

Buffer
FUNC19(Relation rel, uint32 level, bool rightmost,
				 Snapshot snapshot)
{
	Buffer		buf;
	Page		page;
	BTPageOpaque opaque;
	OffsetNumber offnum;
	BlockNumber blkno;
	IndexTuple	itup;

	/*
	 * If we are looking for a leaf page, okay to descend from fast root;
	 * otherwise better descend from true root.  (There is no point in being
	 * smarter about intermediate levels.)
	 */
	if (level == 0)
		buf = FUNC12(rel, BT_READ);
	else
		buf = FUNC13(rel);

	if (!FUNC2(buf))
		return InvalidBuffer;

	page = FUNC1(buf);
	FUNC11(snapshot, rel, page);
	opaque = (BTPageOpaque) FUNC9(page);

	for (;;)
	{
		/*
		 * If we landed on a deleted page, step right to find a live page
		 * (there must be one).  Also, if we want the rightmost page, step
		 * right if needed to get to it (this could happen if the page split
		 * since we obtained a pointer to it).
		 */
		while (FUNC4(opaque) ||
			   (rightmost && !FUNC5(opaque)))
		{
			blkno = opaque->btpo_next;
			if (blkno == P_NONE)
				FUNC15(ERROR, "fell off the end of index \"%s\"",
					 FUNC10(rel));
			buf = FUNC14(rel, buf, blkno, BT_READ);
			page = FUNC1(buf);
			FUNC11(snapshot, rel, page);
			opaque = (BTPageOpaque) FUNC9(page);
		}

		/* Done? */
		if (opaque->btpo.level == level)
			break;
		if (opaque->btpo.level < level)
			FUNC16(ERROR,
					(FUNC17(ERRCODE_INDEX_CORRUPTED),
					 FUNC18("btree level %u not found in index \"%s\"",
									 level, FUNC10(rel))));

		/* Descend to leftmost or rightmost child page */
		if (rightmost)
			offnum = FUNC8(page);
		else
			offnum = FUNC3(opaque);

		itup = (IndexTuple) FUNC6(page, FUNC7(page, offnum));
		blkno = FUNC0(itup);

		buf = FUNC14(rel, buf, blkno, BT_READ);
		page = FUNC1(buf);
		opaque = (BTPageOpaque) FUNC9(page);
	}

	return buf;
}
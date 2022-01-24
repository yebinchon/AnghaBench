#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Page ;
typedef  TYPE_1__* IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FirstOffsetNumber ; 
 int /*<<< orphan*/  GIST_ROOT_BLKNO ; 
 int /*<<< orphan*/  GIST_SHARE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(Relation index)
{
	int			maxLevel;
	BlockNumber blkno;

	/*
	 * Traverse down the tree, starting from the root, until we hit the leaf
	 * level.
	 */
	maxLevel = 0;
	blkno = GIST_ROOT_BLKNO;
	while (true)
	{
		Buffer		buffer;
		Page		page;
		IndexTuple	itup;

		buffer = FUNC6(index, blkno);

		/*
		 * There's no concurrent access during index build, so locking is just
		 * pro forma.
		 */
		FUNC3(buffer, GIST_SHARE);
		page = (Page) FUNC0(buffer);

		if (FUNC1(page))
		{
			/* We hit the bottom, so we're done. */
			FUNC7(buffer);
			break;
		}

		/*
		 * Pick the first downlink on the page, and follow it. It doesn't
		 * matter which downlink we choose, the tree has the same depth
		 * everywhere, so we just pick the first one.
		 */
		itup = (IndexTuple) FUNC4(page,
										FUNC5(page, FirstOffsetNumber));
		blkno = FUNC2(&(itup->t_tid));
		FUNC7(buffer);

		/*
		 * We're going down on the tree. It means that there is yet one more
		 * level in the tree.
		 */
		maxLevel++;
	}
	return maxLevel;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  GinBtree ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FirstOffsetNumber ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static OffsetNumber
FUNC7(GinBtree btree, Page page, BlockNumber blkno, OffsetNumber storedOff)
{
	OffsetNumber i,
				maxoff = FUNC6(page);
	IndexTuple	itup;

	FUNC0(!FUNC3(page));
	FUNC0(!FUNC2(page));

	/* if page isn't changed, we returns storedOff */
	if (storedOff >= FirstOffsetNumber && storedOff <= maxoff)
	{
		itup = (IndexTuple) FUNC4(page, FUNC5(page, storedOff));
		if (FUNC1(itup) == blkno)
			return storedOff;

		/*
		 * we hope, that needed pointer goes to right. It's true if there
		 * wasn't a deletion
		 */
		for (i = storedOff + 1; i <= maxoff; i++)
		{
			itup = (IndexTuple) FUNC4(page, FUNC5(page, i));
			if (FUNC1(itup) == blkno)
				return i;
		}
		maxoff = storedOff - 1;
	}

	/* last chance */
	for (i = FirstOffsetNumber; i <= maxoff; i++)
	{
		itup = (IndexTuple) FUNC4(page, FUNC5(page, i));
		if (FUNC1(itup) == blkno)
			return i;
	}

	return InvalidOffsetNumber;
}
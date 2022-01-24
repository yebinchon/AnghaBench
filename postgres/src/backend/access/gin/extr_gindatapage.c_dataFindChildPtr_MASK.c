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
struct TYPE_2__ {scalar_t__ maxoff; } ;
typedef  int /*<<< orphan*/  PostingItem ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  GinBtree ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static OffsetNumber
FUNC6(GinBtree btree, Page page, BlockNumber blkno, OffsetNumber storedOff)
{
	OffsetNumber i,
				maxoff = FUNC2(page)->maxoff;
	PostingItem *pitem;

	FUNC0(!FUNC4(page));
	FUNC0(FUNC3(page));

	/* if page isn't changed, we return storedOff */
	if (storedOff >= FirstOffsetNumber && storedOff <= maxoff)
	{
		pitem = FUNC1(page, storedOff);
		if (FUNC5(pitem) == blkno)
			return storedOff;

		/*
		 * we hope, that needed pointer goes to right. It's true if there
		 * wasn't a deletion
		 */
		for (i = storedOff + 1; i <= maxoff; i++)
		{
			pitem = FUNC1(page, i);
			if (FUNC5(pitem) == blkno)
				return i;
		}

		maxoff = storedOff - 1;
	}

	/* last chance */
	for (i = FirstOffsetNumber; i <= maxoff; i++)
	{
		pitem = FUNC1(page, i);
		if (FUNC5(pitem) == blkno)
			return i;
	}

	return InvalidOffsetNumber;
}
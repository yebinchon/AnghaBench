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
struct TYPE_7__ {scalar_t__ (* getLeftMostChild ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  entryCategory; int /*<<< orphan*/  entryKey; int /*<<< orphan*/  entryAttnum; int /*<<< orphan*/  ginstate; scalar_t__ fullScan; } ;
struct TYPE_6__ {int off; int predictNumber; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/ * IndexTuple ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  TYPE_1__ GinBtreeStack ;
typedef  TYPE_2__* GinBtree ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FirstOffsetNumber ; 
 scalar_t__ GIN_ROOT_BLKNO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BlockNumber
FUNC13(GinBtree btree, GinBtreeStack *stack)
{
	OffsetNumber low,
				high,
				maxoff;
	IndexTuple	itup = NULL;
	int			result;
	Page		page = FUNC1(stack->buffer);

	FUNC0(!FUNC4(page));
	FUNC0(!FUNC3(page));

	if (btree->fullScan)
	{
		stack->off = FirstOffsetNumber;
		stack->predictNumber *= FUNC8(page);
		return btree->getLeftMostChild(btree, page);
	}

	low = FirstOffsetNumber;
	maxoff = high = FUNC8(page);
	FUNC0(high >= low);

	high++;

	while (high > low)
	{
		OffsetNumber mid = low + ((high - low) / 2);

		if (mid == maxoff && FUNC5(page))
		{
			/* Right infinity */
			result = -1;
		}
		else
		{
			OffsetNumber attnum;
			Datum		key;
			GinNullCategory category;

			itup = (IndexTuple) FUNC6(page, FUNC7(page, mid));
			attnum = FUNC10(btree->ginstate, itup);
			key = FUNC11(btree->ginstate, itup, &category);
			result = FUNC9(btree->ginstate,
										  btree->entryAttnum,
										  btree->entryKey,
										  btree->entryCategory,
										  attnum, key, category);
		}

		if (result == 0)
		{
			stack->off = mid;
			FUNC0(FUNC2(itup) != GIN_ROOT_BLKNO);
			return FUNC2(itup);
		}
		else if (result > 0)
			low = mid + 1;
		else
			high = mid;
	}

	FUNC0(high >= FirstOffsetNumber && high <= maxoff);

	stack->off = high;
	itup = (IndexTuple) FUNC6(page, FUNC7(page, high));
	FUNC0(FUNC2(itup) != GIN_ROOT_BLKNO);
	return FUNC2(itup);
}
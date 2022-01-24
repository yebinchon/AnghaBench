#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int maxoff; } ;
struct TYPE_12__ {int /*<<< orphan*/  itemptr; int /*<<< orphan*/  (* getLeftMostChild ) (TYPE_3__*,int /*<<< orphan*/ ) ;scalar_t__ fullScan; } ;
struct TYPE_11__ {int off; int predictNumber; int /*<<< orphan*/  buffer; } ;
struct TYPE_10__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ PostingItem ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  TYPE_2__ GinBtreeStack ;
typedef  TYPE_3__* GinBtree ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FirstOffsetNumber ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_8__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BlockNumber
FUNC9(GinBtree btree, GinBtreeStack *stack)
{
	OffsetNumber low,
				high,
				maxoff;
	PostingItem *pitem = NULL;
	int			result;
	Page		page = FUNC1(stack->buffer);

	FUNC0(!FUNC5(page));
	FUNC0(FUNC4(page));

	if (btree->fullScan)
	{
		stack->off = FirstOffsetNumber;
		stack->predictNumber *= FUNC3(page)->maxoff;
		return btree->getLeftMostChild(btree, page);
	}

	low = FirstOffsetNumber;
	maxoff = high = FUNC3(page)->maxoff;
	FUNC0(high >= low);

	high++;

	while (high > low)
	{
		OffsetNumber mid = low + ((high - low) / 2);

		pitem = FUNC2(page, mid);

		if (mid == maxoff)
		{
			/*
			 * Right infinity, page already correctly chosen with a help of
			 * dataIsMoveRight
			 */
			result = -1;
		}
		else
		{
			pitem = FUNC2(page, mid);
			result = FUNC7(&btree->itemptr, &(pitem->key));
		}

		if (result == 0)
		{
			stack->off = mid;
			return FUNC6(pitem);
		}
		else if (result > 0)
			low = mid + 1;
		else
			high = mid;
	}

	FUNC0(high >= FirstOffsetNumber && high <= maxoff);

	stack->off = high;
	pitem = FUNC2(page, high);
	return FUNC6(pitem);
}
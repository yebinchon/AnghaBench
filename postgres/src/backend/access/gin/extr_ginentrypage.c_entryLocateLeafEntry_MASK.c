#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  entryCategory; int /*<<< orphan*/  entryKey; int /*<<< orphan*/  entryAttnum; int /*<<< orphan*/  ginstate; scalar_t__ fullScan; } ;
struct TYPE_5__ {void* off; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  TYPE_1__ GinBtreeStack ;
typedef  TYPE_2__* GinBtree ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC10(GinBtree btree, GinBtreeStack *stack)
{
	Page		page = FUNC1(stack->buffer);
	OffsetNumber low,
				high;

	FUNC0(FUNC3(page));
	FUNC0(!FUNC2(page));

	if (btree->fullScan)
	{
		stack->off = FirstOffsetNumber;
		return true;
	}

	low = FirstOffsetNumber;
	high = FUNC6(page);

	if (high < low)
	{
		stack->off = FirstOffsetNumber;
		return false;
	}

	high++;

	while (high > low)
	{
		OffsetNumber mid = low + ((high - low) / 2);
		IndexTuple	itup;
		OffsetNumber attnum;
		Datum		key;
		GinNullCategory category;
		int			result;

		itup = (IndexTuple) FUNC4(page, FUNC5(page, mid));
		attnum = FUNC8(btree->ginstate, itup);
		key = FUNC9(btree->ginstate, itup, &category);
		result = FUNC7(btree->ginstate,
									  btree->entryAttnum,
									  btree->entryKey,
									  btree->entryCategory,
									  attnum, key, category);
		if (result == 0)
		{
			stack->off = mid;
			return true;
		}
		else if (result > 0)
			low = mid + 1;
		else
			high = mid;
	}

	stack->off = high;
	return false;
}
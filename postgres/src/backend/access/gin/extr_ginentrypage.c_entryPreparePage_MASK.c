#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int entry; scalar_t__ isDelete; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  TYPE_1__ GinBtreeEntryInsertData ;
typedef  int /*<<< orphan*/  GinBtree ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(GinBtree btree, Page page, OffsetNumber off,
				 GinBtreeEntryInsertData *insertData, BlockNumber updateblkno)
{
	FUNC0(insertData->entry);
	FUNC0(!FUNC1(page));

	if (insertData->isDelete)
	{
		FUNC0(FUNC2(page));
		FUNC6(page, off);
	}

	if (!FUNC2(page) && updateblkno != InvalidBlockNumber)
	{
		IndexTuple	itup = (IndexTuple) FUNC4(page, FUNC5(page, off));

		FUNC3(itup, updateblkno);
	}
}
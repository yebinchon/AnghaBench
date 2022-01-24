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
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int IndexTuple ;
typedef  TYPE_1__ GinBtreeEntryInsertData ;
typedef  int /*<<< orphan*/  GinBtree ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8(GinBtree btree, Buffer buf, OffsetNumber off,
				   GinBtreeEntryInsertData *insertData)
{
	Size		releasedsz = 0;
	Size		addedsz;
	Page		page = FUNC1(buf);

	FUNC0(insertData->entry);
	FUNC0(!FUNC2(page));

	if (insertData->isDelete)
	{
		IndexTuple	itup = (IndexTuple) FUNC6(page, FUNC7(page, off));

		releasedsz = FUNC4(FUNC3(itup)) + sizeof(ItemIdData);
	}

	addedsz = FUNC4(FUNC3(insertData->entry)) + sizeof(ItemIdData);

	if (FUNC5(page) + releasedsz >= addedsz)
		return true;

	return false;
}
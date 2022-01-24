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
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  ItemPointer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

bool
FUNC3(ItemPointer pointer1, ItemPointer pointer2)
{
	/*
	 * We really want ItemPointerData to be exactly 6 bytes.  This is rather a
	 * random place to check, but there is no better place.
	 */
	FUNC2(sizeof(ItemPointerData) == 3 * sizeof(uint16),
					 "ItemPointerData struct is improperly padded");

	if (FUNC0(pointer1) ==
		FUNC0(pointer2) &&
		FUNC1(pointer1) ==
		FUNC1(pointer2))
		return true;
	else
		return false;
}
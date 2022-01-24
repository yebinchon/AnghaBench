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
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  FSMAddress ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

BlockNumber
FUNC6(Relation rel, BlockNumber oldPage,
							  Size oldSpaceAvail, Size spaceNeeded)
{
	int			old_cat = FUNC4(oldSpaceAvail);
	int			search_cat = FUNC5(spaceNeeded);
	FSMAddress	addr;
	uint16		slot;
	int			search_slot;

	/* Get the location of the FSM byte representing the heap block */
	addr = FUNC1(oldPage, &slot);

	search_slot = FUNC3(rel, addr, slot, old_cat, search_cat);

	/*
	 * If fsm_set_and_search found a suitable new block, return that.
	 * Otherwise, search as usual.
	 */
	if (search_slot != -1)
		return FUNC0(addr, search_slot);
	else
		return FUNC2(rel, search_cat);
}
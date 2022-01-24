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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(Relation rel, BlockNumber heapBlk, Size spaceAvail)
{
	int			new_cat = FUNC2(spaceAvail);
	FSMAddress	addr;
	uint16		slot;

	/* Get the location of the FSM byte representing the heap block */
	addr = FUNC0(heapBlk, &slot);

	FUNC1(rel, addr, slot, new_cat, 0);
}
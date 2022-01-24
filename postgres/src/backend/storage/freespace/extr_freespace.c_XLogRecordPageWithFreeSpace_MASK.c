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
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  FSMAddress ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BLCKSZ ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSM_FORKNUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_ZERO_ON_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(RelFileNode rnode, BlockNumber heapBlk,
							Size spaceAvail)
{
	int			new_cat = FUNC10(spaceAvail);
	FSMAddress	addr;
	uint16		slot;
	BlockNumber blkno;
	Buffer		buf;
	Page		page;

	/* Get the location of the FSM byte representing the heap block */
	addr = FUNC7(heapBlk, &slot);
	blkno = FUNC8(addr);

	/* If the page doesn't exist already, extend */
	buf = FUNC6(rnode, FSM_FORKNUM, blkno, RBM_ZERO_ON_ERROR);
	FUNC1(buf, BUFFER_LOCK_EXCLUSIVE);

	page = FUNC0(buf);
	if (FUNC4(page))
		FUNC3(page, BLCKSZ, 0);

	if (FUNC9(page, slot, new_cat))
		FUNC2(buf, false);
	FUNC5(buf);
}
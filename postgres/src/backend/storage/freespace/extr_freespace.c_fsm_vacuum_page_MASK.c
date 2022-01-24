#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int uint16 ;
struct TYPE_11__ {scalar_t__ level; scalar_t__ logpageno; } ;
struct TYPE_10__ {scalar_t__ fp_next_slot; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* FSMPage ;
typedef  TYPE_2__ FSMAddress ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FSM_BOTTOM_LEVEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int SlotsPerFSMPage ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ FUNC9 (TYPE_2__,int) ; 
 TYPE_2__ FUNC10 (int /*<<< orphan*/ ,int*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC12 (TYPE_2__,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static uint8
FUNC15(Relation rel, FSMAddress addr,
				BlockNumber start, BlockNumber end,
				bool *eof_p)
{
	Buffer		buf;
	Page		page;
	uint8		max_avail;

	/* Read the page if it exists, or return EOF */
	buf = FUNC13(rel, addr, false);
	if (!FUNC2(buf))
	{
		*eof_p = true;
		return 0;
	}
	else
		*eof_p = false;

	page = FUNC1(buf);

	/*
	 * If we're above the bottom level, recurse into children, and fix the
	 * information stored about them at this level.
	 */
	if (addr.level > FSM_BOTTOM_LEVEL)
	{
		FSMAddress	fsm_start,
					fsm_end;
		uint16		fsm_start_slot,
					fsm_end_slot;
		int			slot,
					start_slot,
					end_slot;
		bool		eof = false;

		/*
		 * Compute the range of slots we need to update on this page, given
		 * the requested range of heap blocks to consider.  The first slot to
		 * update is the one covering the "start" block, and the last slot is
		 * the one covering "end - 1".  (Some of this work will be duplicated
		 * in each recursive call, but it's cheap enough to not worry about.)
		 */
		fsm_start = FUNC10(start, &fsm_start_slot);
		fsm_end = FUNC10(end - 1, &fsm_end_slot);

		while (fsm_start.level < addr.level)
		{
			fsm_start = FUNC12(fsm_start, &fsm_start_slot);
			fsm_end = FUNC12(fsm_end, &fsm_end_slot);
		}
		FUNC0(fsm_start.level == addr.level);

		if (fsm_start.logpageno == addr.logpageno)
			start_slot = fsm_start_slot;
		else if (fsm_start.logpageno > addr.logpageno)
			start_slot = SlotsPerFSMPage;	/* shouldn't get here... */
		else
			start_slot = 0;

		if (fsm_end.logpageno == addr.logpageno)
			end_slot = fsm_end_slot;
		else if (fsm_end.logpageno > addr.logpageno)
			end_slot = SlotsPerFSMPage - 1;
		else
			end_slot = -1;		/* shouldn't get here... */

		for (slot = start_slot; slot <= end_slot; slot++)
		{
			int			child_avail;

			FUNC3();

			/* After we hit end-of-file, just clear the rest of the slots */
			if (!eof)
				child_avail = FUNC15(rel, FUNC9(addr, slot),
											  start, end,
											  &eof);
			else
				child_avail = 0;

			/* Update information about the child */
			if (FUNC8(page, slot) != child_avail)
			{
				FUNC4(buf, BUFFER_LOCK_EXCLUSIVE);
				FUNC14(page, slot, child_avail);
				FUNC5(buf, false);
				FUNC4(buf, BUFFER_LOCK_UNLOCK);
			}
		}
	}

	/* Now get the maximum value on the page, to return to caller */
	max_avail = FUNC11(page);

	/*
	 * Reset the next slot pointer. This encourages the use of low-numbered
	 * pages, increasing the chances that a later vacuum can truncate the
	 * relation.  We don't bother with a lock here, nor with marking the page
	 * dirty if it wasn't already, since this is just a hint.
	 */
	((FSMPage) FUNC6(page))->fp_next_slot = 0;

	FUNC7(buf);

	return max_avail;
}
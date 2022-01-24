#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_10__ {scalar_t__ level; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ FSMAddress ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FSM_BOTTOM_LEVEL ; 
 TYPE_1__ FSM_ROOT_ADDRESS ; 
 scalar_t__ FSM_ROOT_LEVEL ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC4 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC7 (TYPE_1__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BlockNumber
FUNC11(Relation rel, uint8 min_cat)
{
	int			restarts = 0;
	FSMAddress	addr = FSM_ROOT_ADDRESS;

	for (;;)
	{
		int			slot;
		Buffer		buf;
		uint8		max_avail = 0;

		/* Read the FSM page. */
		buf = FUNC8(rel, addr, false);

		/* Search within the page */
		if (FUNC1(buf))
		{
			FUNC2(buf, BUFFER_LOCK_SHARE);
			slot = FUNC9(buf, min_cat,
									(addr.level == FSM_BOTTOM_LEVEL),
									false);
			if (slot == -1)
				max_avail = FUNC6(FUNC0(buf));
			FUNC3(buf);
		}
		else
			slot = -1;

		if (slot != -1)
		{
			/*
			 * Descend the tree, or return the found block if we're at the
			 * bottom.
			 */
			if (addr.level == FSM_BOTTOM_LEVEL)
				return FUNC5(addr, slot);

			addr = FUNC4(addr, slot);
		}
		else if (addr.level == FSM_ROOT_LEVEL)
		{
			/*
			 * At the root, failure means there's no page with enough free
			 * space in the FSM. Give up.
			 */
			return InvalidBlockNumber;
		}
		else
		{
			uint16		parentslot;
			FSMAddress	parent;

			/*
			 * At lower level, failure can happen if the value in the upper-
			 * level node didn't reflect the value on the lower page. Update
			 * the upper node, to avoid falling into the same trap again, and
			 * start over.
			 *
			 * There's a race condition here, if another backend updates this
			 * page right after we release it, and gets the lock on the parent
			 * page before us. We'll then update the parent page with the now
			 * stale information we had. It's OK, because it should happen
			 * rarely, and will be fixed by the next vacuum.
			 */
			parent = FUNC7(addr, &parentslot);
			FUNC10(rel, parent, parentslot, max_avail, 0);

			/*
			 * If the upper pages are badly out of date, we might need to loop
			 * quite a few times, updating them as we go. Any inconsistencies
			 * should eventually be corrected and the loop should end. Looping
			 * indefinitely is nevertheless scary, so provide an emergency
			 * valve.
			 */
			if (restarts++ > 10000)
				return InvalidBlockNumber;

			/* Start search all over from the root */
			addr = FSM_ROOT_ADDRESS;
		}
	}
}
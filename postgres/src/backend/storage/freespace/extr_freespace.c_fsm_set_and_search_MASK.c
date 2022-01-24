#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_4__ {scalar_t__ level; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__ FSMAddress ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FSM_BOTTOM_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(Relation rel, FSMAddress addr, uint16 slot,
				   uint8 newValue, uint8 minValue)
{
	Buffer		buf;
	Page		page;
	int			newslot = -1;

	buf = FUNC4(rel, addr, true);
	FUNC1(buf, BUFFER_LOCK_EXCLUSIVE);

	page = FUNC0(buf);

	if (FUNC6(page, slot, newValue))
		FUNC2(buf, false);

	if (minValue != 0)
	{
		/* Search while we still hold the lock */
		newslot = FUNC5(buf, minValue,
								   addr.level == FSM_BOTTOM_LEVEL,
								   true);
	}

	FUNC3(buf);

	return newslot;
}
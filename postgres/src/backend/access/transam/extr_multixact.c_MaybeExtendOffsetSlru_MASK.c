#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  nextMXact; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MultiXactOffsetControlLock ; 
 int /*<<< orphan*/  MultiXactOffsetCtl ; 
 TYPE_1__* MultiXactState ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static void
FUNC6(void)
{
	int			pageno;

	pageno = FUNC2(MultiXactState->nextMXact);

	FUNC0(MultiXactOffsetControlLock, LW_EXCLUSIVE);

	if (!FUNC3(MultiXactOffsetCtl, pageno))
	{
		int			slotno;

		/*
		 * Fortunately for us, SimpleLruWritePage is already prepared to deal
		 * with creating a new segment file even if the page we're writing is
		 * not the first in it, so this is enough.
		 */
		slotno = FUNC5(pageno, false);
		FUNC4(MultiXactOffsetCtl, slotno);
	}

	FUNC1(MultiXactOffsetControlLock);
}
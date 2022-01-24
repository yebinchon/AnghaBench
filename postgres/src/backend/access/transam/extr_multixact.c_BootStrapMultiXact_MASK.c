#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int /*<<< orphan*/ * page_dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  MultiXactMemberControlLock ; 
 TYPE_2__* MultiXactMemberCtl ; 
 int /*<<< orphan*/  MultiXactOffsetControlLock ; 
 TYPE_2__* MultiXactOffsetCtl ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

void
FUNC6(void)
{
	int			slotno;

	FUNC1(MultiXactOffsetControlLock, LW_EXCLUSIVE);

	/* Create and zero the first page of the offsets log */
	slotno = FUNC5(0, false);

	/* Make sure it's written out */
	FUNC3(MultiXactOffsetCtl, slotno);
	FUNC0(!MultiXactOffsetCtl->shared->page_dirty[slotno]);

	FUNC2(MultiXactOffsetControlLock);

	FUNC1(MultiXactMemberControlLock, LW_EXCLUSIVE);

	/* Create and zero the first page of the members log */
	slotno = FUNC4(0, false);

	/* Make sure it's written out */
	FUNC3(MultiXactMemberCtl, slotno);
	FUNC0(!MultiXactMemberCtl->shared->page_dirty[slotno]);

	FUNC2(MultiXactMemberControlLock);
}
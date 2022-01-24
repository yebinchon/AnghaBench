#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {int /*<<< orphan*/ * page_dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 TYPE_2__* SubTransCtl ; 
 int /*<<< orphan*/  SubtransControlLock ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	int			slotno;

	FUNC1(SubtransControlLock, LW_EXCLUSIVE);

	/* Create and zero the first page of the subtrans log */
	slotno = FUNC4(0);

	/* Make sure it's written out */
	FUNC3(SubTransCtl, slotno);
	FUNC0(!SubTransCtl->shared->page_dirty[slotno]);

	FUNC2(SubtransControlLock);
}
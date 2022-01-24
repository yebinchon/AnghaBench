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
struct TYPE_2__ {int /*<<< orphan*/  il_info; int /*<<< orphan*/  il_ind; int /*<<< orphan*/  il_heap; struct TYPE_2__* il_next; } ;
typedef  int /*<<< orphan*/  Relation ;

/* Variables and functions */
 TYPE_1__* ILHead ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	for (; ILHead != NULL; ILHead = ILHead->il_next)
	{
		Relation	heap;
		Relation	ind;

		/* need not bother with locks during bootstrap */
		heap = FUNC4(ILHead->il_heap, NoLock);
		ind = FUNC2(ILHead->il_ind, NoLock);

		FUNC0(heap, ind, ILHead->il_info, false, false);

		FUNC1(ind, NoLock);
		FUNC3(heap, NoLock);
	}
}
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
typedef  int /*<<< orphan*/  SortItem ;
typedef  int /*<<< orphan*/  MultiSortSupport ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(int numrows, SortItem *items, MultiSortSupport mss)
{
	int			i;
	int			ndistinct;

	ndistinct = 1;
	for (i = 1; i < numrows; i++)
	{
		/* make sure the array really is sorted */
		FUNC0(FUNC1(&items[i], &items[i - 1], mss) >= 0);

		if (FUNC1(&items[i], &items[i - 1], mss) != 0)
			ndistinct += 1;
	}

	return ndistinct;
}
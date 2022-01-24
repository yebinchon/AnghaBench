#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int count; } ;
typedef  TYPE_1__ SortItem ;
typedef  int /*<<< orphan*/  MultiSortSupport ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  compare_sort_item_count ; 
 int FUNC1 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SortItem *
FUNC5(int numrows, SortItem *items, MultiSortSupport mss,
					  int *ndistinct)
{
	int			i,
				j;
	int			ngroups = FUNC1(numrows, items, mss);

	SortItem   *groups = (SortItem *) FUNC3(ngroups * sizeof(SortItem));

	j = 0;
	groups[0] = items[0];
	groups[0].count = 1;

	for (i = 1; i < numrows; i++)
	{
		/* Assume sorted in ascending order. */
		FUNC0(FUNC2(&items[i], &items[i - 1], mss) >= 0);

		/* New distinct group detected. */
		if (FUNC2(&items[i], &items[i - 1], mss) != 0)
		{
			groups[++j] = items[i];
			groups[j].count = 0;
		}

		groups[j].count++;
	}

	/* ensure we filled the expected number of distinct groups */
	FUNC0(j + 1 == ngroups);

	/* Sort the distinct groups by frequency (in descending order). */
	FUNC4((void *) groups, ngroups, sizeof(SortItem),
			 compare_sort_item_count);

	*ndistinct = ngroups;
	return groups;
}
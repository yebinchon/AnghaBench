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
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  scalar_t__ IndexTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

OffsetNumber
FUNC6(Page page, uint32 hash_value)
{
	OffsetNumber upper;
	OffsetNumber lower;

	/* Loop invariant: lower <= desired place <= upper */
	upper = FUNC4(page);
	lower = FirstOffsetNumber - 1;

	while (upper > lower)
	{
		IndexTuple	itup;
		OffsetNumber off;
		uint32		hashkey;

		off = (upper + lower + 1) / 2;
		FUNC0(FUNC1(off));

		itup = (IndexTuple) FUNC2(page, FUNC3(page, off));
		hashkey = FUNC5(itup);
		if (hashkey > hash_value)
			upper = off - 1;
		else
			lower = off;
	}

	return lower;
}
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
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  scalar_t__ IndexTuple ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int) ; 

void
FUNC6(Page page, IndexTuple *itup, int len, OffsetNumber off)
{
	OffsetNumber l = InvalidOffsetNumber;
	int			i;

	if (off == InvalidOffsetNumber)
		off = (FUNC4(page)) ? FirstOffsetNumber :
			FUNC1(FUNC3(page));

	for (i = 0; i < len; i++)
	{
		Size		sz = FUNC0(itup[i]);

		l = FUNC2(page, (Item) itup[i], sz, off, false, false);
		if (l == InvalidOffsetNumber)
			FUNC5(ERROR, "failed to add item to GiST index page, item %d out of %d, size %d bytes",
				 i, len, (int) sz);
		off++;
	}
}
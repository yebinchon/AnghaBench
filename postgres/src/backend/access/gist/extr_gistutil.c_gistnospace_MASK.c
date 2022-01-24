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
typedef  unsigned int Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int /*<<< orphan*/  IndexTuple ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOffsetNumber ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

bool
FUNC4(Page page, IndexTuple *itvec, int len, OffsetNumber todelete, Size freespace)
{
	unsigned int size = freespace,
				deleted = 0;
	int			i;

	for (i = 0; i < len; i++)
		size += FUNC0(itvec[i]) + sizeof(ItemIdData);

	if (todelete != InvalidOffsetNumber)
	{
		IndexTuple	itup = (IndexTuple) FUNC2(page, FUNC3(page, todelete));

		deleted = FUNC0(itup) + sizeof(ItemIdData);
	}

	return (FUNC1(page) + deleted < size);
}
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
struct TYPE_2__ {scalar_t__ maxoff; } ;
typedef  int /*<<< orphan*/  PostingItem ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__) ; 

void
FUNC8(Page page, PostingItem *data, OffsetNumber offset)
{
	OffsetNumber maxoff = FUNC3(page)->maxoff;
	char	   *ptr;

	FUNC0(FUNC5(data) != InvalidBlockNumber);
	FUNC0(!FUNC4(page));

	if (offset == InvalidOffsetNumber)
	{
		ptr = (char *) FUNC1(page, maxoff + 1);
	}
	else
	{
		ptr = (char *) FUNC1(page, offset);
		if (offset != maxoff + 1)
			FUNC7(ptr + sizeof(PostingItem),
					ptr,
					(maxoff - offset + 1) * sizeof(PostingItem));
	}
	FUNC6(ptr, data, sizeof(PostingItem));

	maxoff++;
	FUNC3(page)->maxoff = maxoff;

	/*
	 * Also set pd_lower to the end of the posting items, to follow the
	 * "standard" page layout, so that we can squeeze out the unused space
	 * from full-page images.
	 */
	FUNC2(page, maxoff * sizeof(PostingItem));
}
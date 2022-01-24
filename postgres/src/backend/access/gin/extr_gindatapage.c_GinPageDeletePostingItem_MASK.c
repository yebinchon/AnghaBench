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
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC6(Page page, OffsetNumber offset)
{
	OffsetNumber maxoff = FUNC3(page)->maxoff;

	FUNC0(!FUNC4(page));
	FUNC0(offset >= FirstOffsetNumber && offset <= maxoff);

	if (offset != maxoff)
		FUNC5(FUNC1(page, offset),
				FUNC1(page, offset + 1),
				sizeof(PostingItem) * (maxoff - offset));

	maxoff--;
	FUNC3(page)->maxoff = maxoff;

	FUNC2(page, maxoff * sizeof(PostingItem));
}
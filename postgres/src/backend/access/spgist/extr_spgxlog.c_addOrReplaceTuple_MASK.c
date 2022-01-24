#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nPlaceholder; } ;
struct TYPE_3__ {scalar_t__ tupstate; } ;
typedef  TYPE_1__* SpGistDeadTuple ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SPGIST_PLACEHOLDER ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC8(Page page, Item tuple, int size, OffsetNumber offset)
{
	if (offset <= FUNC4(page))
	{
		SpGistDeadTuple dt = (SpGistDeadTuple) FUNC2(page,
														   FUNC3(page, offset));

		if (dt->tupstate != SPGIST_PLACEHOLDER)
			FUNC7(ERROR, "SPGiST tuple to be replaced is not a placeholder");

		FUNC0(FUNC6(page)->nPlaceholder > 0);
		FUNC6(page)->nPlaceholder--;

		FUNC5(page, offset);
	}

	FUNC0(offset <= FUNC4(page) + 1);

	if (FUNC1(page, tuple, size, offset, false, false) != offset)
		FUNC7(ERROR, "failed to add item of size %u to SPGiST index page",
			 size);
}
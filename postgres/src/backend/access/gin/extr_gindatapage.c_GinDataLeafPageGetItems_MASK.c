#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  first; } ;
typedef  scalar_t__ Size ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_1__ GinPostingList ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 

ItemPointer
FUNC10(Page page, int *nitems, ItemPointerData advancePast)
{
	ItemPointer result;

	if (FUNC3(page))
	{
		GinPostingList *seg = FUNC0(page);
		Size		len = FUNC1(page);
		Pointer		endptr = ((Pointer) seg) + len;
		GinPostingList *next;

		/* Skip to the segment containing advancePast+1 */
		if (FUNC4(&advancePast))
		{
			next = FUNC2(seg);
			while ((Pointer) next < endptr &&
				   FUNC6(&next->first, &advancePast) <= 0)
			{
				seg = next;
				next = FUNC2(seg);
			}
			len = endptr - (Pointer) seg;
		}

		if (len > 0)
			result = FUNC7(seg, len, nitems);
		else
		{
			result = NULL;
			*nitems = 0;
		}
	}
	else
	{
		ItemPointer tmp = FUNC5(page, nitems);

		result = FUNC9((*nitems) * sizeof(ItemPointerData));
		FUNC8(result, tmp, (*nitems) * sizeof(ItemPointerData));
	}

	return result;
}
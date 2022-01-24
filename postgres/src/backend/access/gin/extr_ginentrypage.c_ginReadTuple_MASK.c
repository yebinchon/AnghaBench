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
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  scalar_t__ ItemPointer ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  int /*<<< orphan*/  GinState ;
typedef  int /*<<< orphan*/  GinPostingList ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC6 (int) ; 

ItemPointer
FUNC7(GinState *ginstate, OffsetNumber attnum, IndexTuple itup,
			 int *nitems)
{
	Pointer		ptr = FUNC1(itup);
	int			nipd = FUNC0(itup);
	ItemPointer ipd;
	int			ndecoded;

	if (FUNC2(itup))
	{
		if (nipd > 0)
		{
			ipd = FUNC4((GinPostingList *) ptr, &ndecoded);
			if (nipd != ndecoded)
				FUNC3(ERROR, "number of items mismatch in GIN entry tuple, %d in tuple header, %d decoded",
					 nipd, ndecoded);
		}
		else
		{
			ipd = FUNC6(0);
		}
	}
	else
	{
		ipd = (ItemPointer) FUNC6(sizeof(ItemPointerData) * nipd);
		FUNC5(ipd, ptr, sizeof(ItemPointerData) * nipd);
	}
	*nitems = nipd;
	return ipd;
}
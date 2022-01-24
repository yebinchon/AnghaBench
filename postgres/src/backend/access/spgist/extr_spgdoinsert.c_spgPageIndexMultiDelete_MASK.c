#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  nPlaceholder; int /*<<< orphan*/  nRedirection; } ;
struct TYPE_4__ {int tupstate; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  SpGistState ;
typedef  TYPE_1__* SpGistDeadTuple ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int MaxIndexTuplesPerPage ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int SPGIST_PLACEHOLDER ; 
 int SPGIST_REDIRECT ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmpOffsetNumbers ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC7(SpGistState *state, Page page,
						OffsetNumber *itemnos, int nitems,
						int firststate, int reststate,
						BlockNumber blkno, OffsetNumber offnum)
{
	OffsetNumber firstItem;
	OffsetNumber sortednos[MaxIndexTuplesPerPage];
	SpGistDeadTuple tuple = NULL;
	int			i;

	if (nitems == 0)
		return;					/* nothing to do */

	/*
	 * For efficiency we want to use PageIndexMultiDelete, which requires the
	 * targets to be listed in sorted order, so we have to sort the itemnos
	 * array.  (This also greatly simplifies the math for reinserting the
	 * replacement tuples.)  However, we must not scribble on the caller's
	 * array, so we have to make a copy.
	 */
	FUNC4(sortednos, itemnos, sizeof(OffsetNumber) * nitems);
	if (nitems > 1)
		FUNC5(sortednos, nitems, sizeof(OffsetNumber), cmpOffsetNumbers);

	FUNC1(page, sortednos, nitems);

	firstItem = itemnos[0];

	for (i = 0; i < nitems; i++)
	{
		OffsetNumber itemno = sortednos[i];
		int			tupstate;

		tupstate = (itemno == firstItem) ? firststate : reststate;
		if (tuple == NULL || tuple->tupstate != tupstate)
			tuple = FUNC6(state, tupstate, blkno, offnum);

		if (FUNC0(page, (Item) tuple, tuple->size,
						itemno, false, false) != itemno)
			FUNC3(ERROR, "failed to add item of size %u to SPGiST index page",
				 tuple->size);

		if (tupstate == SPGIST_REDIRECT)
			FUNC2(page)->nRedirection++;
		else if (tupstate == SPGIST_PLACEHOLDER)
			FUNC2(page)->nPlaceholder++;
	}
}
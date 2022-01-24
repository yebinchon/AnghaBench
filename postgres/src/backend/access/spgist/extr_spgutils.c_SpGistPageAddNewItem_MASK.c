#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ tupstate; } ;
struct TYPE_4__ {scalar_t__ nPlaceholder; } ;
typedef  int /*<<< orphan*/  SpGistState ;
typedef  TYPE_1__* SpGistPageOpaque ;
typedef  TYPE_2__* SpGistDeadTuple ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SGDTSIZE ; 
 scalar_t__ SPGIST_PLACEHOLDER ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

OffsetNumber
FUNC10(SpGistState *state, Page page, Item item, Size size,
					 OffsetNumber *startOffset, bool errorOK)
{
	SpGistPageOpaque opaque = FUNC8(page);
	OffsetNumber i,
				maxoff,
				offnum;

	if (opaque->nPlaceholder > 0 &&
		FUNC3(page) + SGDTSIZE >= FUNC1(size))
	{
		/* Try to replace a placeholder */
		maxoff = FUNC6(page);
		offnum = InvalidOffsetNumber;

		for (;;)
		{
			if (startOffset && *startOffset != InvalidOffsetNumber)
				i = *startOffset;
			else
				i = FirstOffsetNumber;
			for (; i <= maxoff; i++)
			{
				SpGistDeadTuple it = (SpGistDeadTuple) FUNC4(page,
																   FUNC5(page, i));

				if (it->tupstate == SPGIST_PLACEHOLDER)
				{
					offnum = i;
					break;
				}
			}

			/* Done if we found a placeholder */
			if (offnum != InvalidOffsetNumber)
				break;

			if (startOffset && *startOffset != InvalidOffsetNumber)
			{
				/* Hint was no good, re-search from beginning */
				*startOffset = InvalidOffsetNumber;
				continue;
			}

			/* Hmm, no placeholder found? */
			opaque->nPlaceholder = 0;
			break;
		}

		if (offnum != InvalidOffsetNumber)
		{
			/* Replace the placeholder tuple */
			FUNC7(page, offnum);

			offnum = FUNC2(page, item, size, offnum, false, false);

			/*
			 * We should not have failed given the size check at the top of
			 * the function, but test anyway.  If we did fail, we must PANIC
			 * because we've already deleted the placeholder tuple, and
			 * there's no other way to keep the damage from getting to disk.
			 */
			if (offnum != InvalidOffsetNumber)
			{
				FUNC0(opaque->nPlaceholder > 0);
				opaque->nPlaceholder--;
				if (startOffset)
					*startOffset = offnum + 1;
			}
			else
				FUNC9(PANIC, "failed to add item of size %u to SPGiST index page",
					 (int) size);

			return offnum;
		}
	}

	/* No luck in replacing a placeholder, so just add it to the page */
	offnum = FUNC2(page, item, size,
						 InvalidOffsetNumber, false, false);

	if (offnum == InvalidOffsetNumber && !errorOK)
		FUNC9(ERROR, "failed to add item of size %u to SPGiST index page",
			 (int) size);

	return offnum;
}
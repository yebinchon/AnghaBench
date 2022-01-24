#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_8__ {scalar_t__ queryCategory; int attnum; int /*<<< orphan*/  extra_data; int /*<<< orphan*/  strategy; int /*<<< orphan*/  queryKey; } ;
struct TYPE_7__ {int /*<<< orphan*/ * supportCollation; int /*<<< orphan*/ * comparePartialFn; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_1__ GinState ;
typedef  TYPE_2__* GinScanEntry ;
typedef  scalar_t__ GinNullCategory ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ GIN_CAT_NORM_KEY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static bool
FUNC8(GinState *ginstate, Page page,
						  OffsetNumber off, OffsetNumber maxoff,
						  GinScanEntry entry,
						  Datum *datum, GinNullCategory *category,
						  bool *datumExtracted)
{
	IndexTuple	itup;
	int32		cmp;

	/* Partial match to a null is not possible */
	if (entry->queryCategory != GIN_CAT_NORM_KEY)
		return false;

	while (off < maxoff)
	{
		itup = (IndexTuple) FUNC2(page, FUNC3(page, off));

		if (FUNC6(ginstate, itup) != entry->attnum)
			return false;

		if (datumExtracted[off - 1] == false)
		{
			datum[off - 1] = FUNC7(ginstate, itup,
											  &category[off - 1]);
			datumExtracted[off - 1] = true;
		}

		/* Once we hit nulls, no further match is possible */
		if (category[off - 1] != GIN_CAT_NORM_KEY)
			return false;

		/*----------
		 * Check partial match.
		 * case cmp == 0 => match
		 * case cmp > 0 => not match and end scan (no later match possible)
		 * case cmp < 0 => not match and continue scan
		 *----------
		 */
		cmp = FUNC0(FUNC1(&ginstate->comparePartialFn[entry->attnum - 1],
											  ginstate->supportCollation[entry->attnum - 1],
											  entry->queryKey,
											  datum[off - 1],
											  FUNC5(entry->strategy),
											  FUNC4(entry->extra_data)));
		if (cmp == 0)
			return true;
		else if (cmp > 0)
			return false;

		off++;
	}

	return false;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_5__ {int nbytes; unsigned char* bytes; int /*<<< orphan*/  first; } ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_1__ GinPostingList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ItemPointer
FUNC10(GinPostingList *segment, int len, int *ndecoded_out)
{
	ItemPointer result;
	int			nallocated;
	uint64		val;
	char	   *endseg = ((char *) segment) + len;
	int			ndecoded;
	unsigned char *ptr;
	unsigned char *endptr;

	/*
	 * Guess an initial size of the array.
	 */
	nallocated = segment->nbytes * 2 + 1;
	result = FUNC7(nallocated * sizeof(ItemPointerData));

	ndecoded = 0;
	while ((char *) segment < endseg)
	{
		/* enlarge output array if needed */
		if (ndecoded >= nallocated)
		{
			nallocated *= 2;
			result = FUNC8(result, nallocated * sizeof(ItemPointerData));
		}

		/* copy the first item */
		FUNC0(FUNC3(FUNC2(&segment->first)));
		FUNC0(ndecoded == 0 || FUNC5(&segment->first, &result[ndecoded - 1]) > 0);
		result[ndecoded] = segment->first;
		ndecoded++;

		val = FUNC6(&segment->first);
		ptr = segment->bytes;
		endptr = segment->bytes + segment->nbytes;
		while (ptr < endptr)
		{
			/* enlarge output array if needed */
			if (ndecoded >= nallocated)
			{
				nallocated *= 2;
				result = FUNC8(result, nallocated * sizeof(ItemPointerData));
			}

			val += FUNC4(&ptr);

			FUNC9(val, &result[ndecoded]);
			ndecoded++;
		}
		segment = FUNC1(segment);
	}

	if (ndecoded_out)
		*ndecoded_out = ndecoded;
	return result;
}
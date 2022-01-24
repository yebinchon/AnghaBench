#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ offset; scalar_t__ is_dst; int /*<<< orphan*/  lineno; int /*<<< orphan*/  filename; int /*<<< orphan*/ * abbrev; int /*<<< orphan*/ * zone; } ;
typedef  TYPE_1__ tzEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(tzEntry **base, int *arraysize, int n,
		   tzEntry *entry, bool override)
{
	tzEntry    *arrayptr;
	int			low;
	int			high;

	/*
	 * Search the array for a duplicate; as a useful side effect, the array is
	 * maintained in sorted order.  We use strcmp() to ensure we match the
	 * sort order datetime.c expects.
	 */
	arrayptr = *base;
	low = 0;
	high = n - 1;
	while (low <= high)
	{
		int			mid = (low + high) >> 1;
		tzEntry    *midptr = arrayptr + mid;
		int			cmp;

		cmp = FUNC5(entry->abbrev, midptr->abbrev);
		if (cmp < 0)
			high = mid - 1;
		else if (cmp > 0)
			low = mid + 1;
		else
		{
			/*
			 * Found a duplicate entry; complain unless it's the same.
			 */
			if ((midptr->zone == NULL && entry->zone == NULL &&
				 midptr->offset == entry->offset &&
				 midptr->is_dst == entry->is_dst) ||
				(midptr->zone != NULL && entry->zone != NULL &&
				 FUNC5(midptr->zone, entry->zone) == 0))
			{
				/* return unchanged array */
				return n;
			}
			if (override)
			{
				/* same abbrev but something is different, override */
				midptr->zone = entry->zone;
				midptr->offset = entry->offset;
				midptr->is_dst = entry->is_dst;
				return n;
			}
			/* same abbrev but something is different, complain */
			FUNC1("time zone abbreviation \"%s\" is multiply defined",
							 entry->abbrev);
			FUNC0("Entry in time zone file \"%s\", line %d, conflicts with entry in file \"%s\", line %d.",
								midptr->filename, midptr->lineno,
								entry->filename, entry->lineno);
			return -1;
		}
	}

	/*
	 * No match, insert at position "low".
	 */
	if (n >= *arraysize)
	{
		*arraysize *= 2;
		*base = (tzEntry *) FUNC4(*base, *arraysize * sizeof(tzEntry));
	}

	arrayptr = *base + low;

	FUNC3(arrayptr + 1, arrayptr, (n - low) * sizeof(tzEntry));

	FUNC2(arrayptr, entry, sizeof(tzEntry));

	return n + 1;
}
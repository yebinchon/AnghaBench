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
typedef  int /*<<< orphan*/  tzEntry ;
typedef  int /*<<< orphan*/  TimeZoneAbbrevTable ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_SMALL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

TimeZoneAbbrevTable *
FUNC7(const char *filename)
{
	TimeZoneAbbrevTable *result = NULL;
	MemoryContext tmpContext;
	MemoryContext oldContext;
	tzEntry    *array;
	int			arraysize;
	int			n;

	/*
	 * Create a temp memory context to work in.  This makes it easy to clean
	 * up afterwards.
	 */
	tmpContext = FUNC0(CurrentMemoryContext,
									   "TZParserMemory",
									   ALLOCSET_SMALL_SIZES);
	oldContext = FUNC4(tmpContext);

	/* Initialize array at a reasonable size */
	arraysize = 128;
	array = (tzEntry *) FUNC6(arraysize * sizeof(tzEntry));

	/* Parse the file(s) */
	n = FUNC5(filename, 0, &array, &arraysize, 0);

	/* If no errors so far, let datetime.c allocate memory & convert format */
	if (n >= 0)
	{
		result = FUNC1(array, n);
		if (!result)
			FUNC2("out of memory");
	}

	/* Clean up */
	FUNC4(oldContext);
	FUNC3(tmpContext);

	return result;
}
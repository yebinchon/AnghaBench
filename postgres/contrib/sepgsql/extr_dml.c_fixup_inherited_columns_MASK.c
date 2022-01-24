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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstLowInvalidHeapAttributeNumber ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 char* FUNC3 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static Bitmapset *
FUNC6(Oid parentId, Oid childId, Bitmapset *columns)
{
	Bitmapset  *result = NULL;
	int			index;

	/*
	 * obviously, no need to do anything here
	 */
	if (parentId == childId)
		return columns;

	index = -1;
	while ((index = FUNC1(columns, index)) >= 0)
	{
		/* bit numbers are offset by FirstLowInvalidHeapAttributeNumber */
		AttrNumber	attno = index + FirstLowInvalidHeapAttributeNumber;
		char	   *attname;

		/*
		 * whole-row-reference shall be fixed-up later
		 */
		if (attno == InvalidAttrNumber)
		{
			result = FUNC0(result, index);
			continue;
		}

		attname = FUNC3(parentId, attno, false);
		attno = FUNC4(childId, attname);
		if (attno == InvalidAttrNumber)
			FUNC2(ERROR, "cache lookup failed for attribute %s of relation %u",
				 attname, childId);

		result = FUNC0(result,
								attno - FirstLowInvalidHeapAttributeNumber);

		FUNC5(attname);
	}

	return result;
}
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
typedef  int /*<<< orphan*/  DumpableObject ;
typedef  void* DumpId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC4 (int) ; 
 void* postDataBoundId ; 
 void* preDataBoundId ; 

void
FUNC5(DumpableObject **objs, int numObjs,
					DumpId preBoundaryId, DumpId postBoundaryId)
{
	DumpableObject **ordering;
	int			nOrdering;

	if (numObjs <= 0)			/* can't happen anymore ... */
		return;

	/*
	 * Saving the boundary IDs in static variables is a bit grotty, but seems
	 * better than adding them to parameter lists of subsidiary functions.
	 */
	preDataBoundId = preBoundaryId;
	postDataBoundId = postBoundaryId;

	ordering = (DumpableObject **) FUNC4(numObjs * sizeof(DumpableObject *));
	while (!FUNC0(objs, numObjs, ordering, &nOrdering))
		FUNC1(ordering, nOrdering, numObjs);

	FUNC3(objs, ordering, numObjs * sizeof(DumpableObject *));

	FUNC2(ordering);
}
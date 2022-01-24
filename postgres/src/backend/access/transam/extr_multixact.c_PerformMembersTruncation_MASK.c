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
typedef  int /*<<< orphan*/  MultiXactOffset ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MaxMultiXactOffset ; 
 int /*<<< orphan*/  MultiXactMemberCtl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(MultiXactOffset oldestOffset, MultiXactOffset newOldestOffset)
{
	const int	maxsegment = FUNC0(MaxMultiXactOffset);
	int			startsegment = FUNC0(oldestOffset);
	int			endsegment = FUNC0(newOldestOffset);
	int			segment = startsegment;

	/*
	 * Delete all the segments but the last one. The last segment can still
	 * contain, possibly partially, valid data.
	 */
	while (segment != endsegment)
	{
		FUNC2(DEBUG2, "truncating multixact members segment %x", segment);
		FUNC1(MultiXactMemberCtl, segment);

		/* move to next segment, handling wraparound correctly */
		if (segment == maxsegment)
			segment = 0;
		else
			segment += 1;
	}
}
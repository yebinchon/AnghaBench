#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ nextMXact; } ;
typedef  scalar_t__ MultiXactId ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 scalar_t__ FirstMultiXactId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int MaxOldestSlot ; 
 int /*<<< orphan*/  MultiXactGenLock ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 TYPE_1__* MultiXactState ; 
 size_t MyBackendId ; 
 scalar_t__* OldestMemberMXactId ; 
 scalar_t__* OldestVisibleMXactId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(void)
{
	if (!FUNC2(OldestVisibleMXactId[MyBackendId]))
	{
		MultiXactId oldestMXact;
		int			i;

		FUNC0(MultiXactGenLock, LW_EXCLUSIVE);

		/*
		 * We have to beware of the possibility that nextMXact is in the
		 * wrapped-around state.  We don't fix the counter itself here, but we
		 * must be sure to store a valid value in our array entry.
		 */
		oldestMXact = MultiXactState->nextMXact;
		if (oldestMXact < FirstMultiXactId)
			oldestMXact = FirstMultiXactId;

		for (i = 1; i <= MaxOldestSlot; i++)
		{
			MultiXactId thisoldest = OldestMemberMXactId[i];

			if (FUNC2(thisoldest) &&
				FUNC3(thisoldest, oldestMXact))
				oldestMXact = thisoldest;
		}

		OldestVisibleMXactId[MyBackendId] = oldestMXact;

		FUNC1(MultiXactGenLock);

		FUNC4(DEBUG2, "MultiXact: setting OldestVisible[%d] = %u",
					MyBackendId, oldestMXact);
	}
}
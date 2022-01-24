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
struct TYPE_2__ {void* nextOffset; void* nextMXact; } ;
typedef  void* MultiXactOffset ;
typedef  void* MultiXactId ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  MultiXactGenLock ; 
 scalar_t__ FUNC2 (void*,void*) ; 
 scalar_t__ FUNC3 (void*,void*) ; 
 TYPE_1__* MultiXactState ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,void*) ; 

void
FUNC5(MultiXactId minMulti,
						  MultiXactOffset minMultiOffset)
{
	FUNC0(MultiXactGenLock, LW_EXCLUSIVE);
	if (FUNC2(MultiXactState->nextMXact, minMulti))
	{
		FUNC4(DEBUG2, "MultiXact: setting next multi to %u", minMulti);
		MultiXactState->nextMXact = minMulti;
	}
	if (FUNC3(MultiXactState->nextOffset, minMultiOffset))
	{
		FUNC4(DEBUG2, "MultiXact: setting next offset to %u",
					minMultiOffset);
		MultiXactState->nextOffset = minMultiOffset;
	}
	FUNC1(MultiXactGenLock);
}
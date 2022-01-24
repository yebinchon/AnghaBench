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
typedef  scalar_t__ uint32 ;
struct TYPE_2__ {int oldestOffsetKnown; scalar_t__ oldestOffset; scalar_t__ nextMXact; scalar_t__ oldestMultiXactId; scalar_t__ nextOffset; } ;
typedef  scalar_t__ MultiXactOffset ;
typedef  scalar_t__ MultiXactId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  MultiXactGenLock ; 
 TYPE_1__* MultiXactState ; 

__attribute__((used)) static bool
FUNC2(uint32 *multixacts, MultiXactOffset *members)
{
	MultiXactOffset nextOffset;
	MultiXactOffset oldestOffset;
	MultiXactId oldestMultiXactId;
	MultiXactId nextMultiXactId;
	bool		oldestOffsetKnown;

	FUNC0(MultiXactGenLock, LW_SHARED);
	nextOffset = MultiXactState->nextOffset;
	oldestMultiXactId = MultiXactState->oldestMultiXactId;
	nextMultiXactId = MultiXactState->nextMXact;
	oldestOffset = MultiXactState->oldestOffset;
	oldestOffsetKnown = MultiXactState->oldestOffsetKnown;
	FUNC1(MultiXactGenLock);

	if (!oldestOffsetKnown)
		return false;

	*members = nextOffset - oldestOffset;
	*multixacts = nextMultiXactId - oldestMultiXactId;
	return true;
}
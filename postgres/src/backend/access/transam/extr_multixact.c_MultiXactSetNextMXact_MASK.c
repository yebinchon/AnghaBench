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
struct TYPE_2__ {int /*<<< orphan*/  nextOffset; int /*<<< orphan*/  nextMXact; } ;
typedef  int /*<<< orphan*/  MultiXactOffset ;
typedef  int /*<<< orphan*/  MultiXactId ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 scalar_t__ IsBinaryUpgrade ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  MultiXactGenLock ; 
 TYPE_1__* MultiXactState ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(MultiXactId nextMulti,
					  MultiXactOffset nextMultiOffset)
{
	FUNC3(DEBUG2, "MultiXact: setting next multi to %u offset %u",
				nextMulti, nextMultiOffset);
	FUNC0(MultiXactGenLock, LW_EXCLUSIVE);
	MultiXactState->nextMXact = nextMulti;
	MultiXactState->nextOffset = nextMultiOffset;
	FUNC1(MultiXactGenLock);

	/*
	 * During a binary upgrade, make sure that the offsets SLRU is large
	 * enough to contain the next value that would be created.
	 *
	 * We need to do this pretty early during the first startup in binary
	 * upgrade mode: before StartupMultiXact() in fact, because this routine
	 * is called even before that by StartupXLOG().  And we can't do it
	 * earlier than at this point, because during that first call of this
	 * routine we determine the MultiXactState->nextMXact value that
	 * MaybeExtendOffsetSlru needs.
	 */
	if (IsBinaryUpgrade)
		FUNC2();
}
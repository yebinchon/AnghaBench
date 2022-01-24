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
 scalar_t__ FirstMultiXactId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  MultiXactGenLock ; 
 TYPE_1__* MultiXactState ; 

MultiXactId
FUNC2(void)
{
	MultiXactId mxid;

	/* XXX we could presumably do this without a lock. */
	FUNC0(MultiXactGenLock, LW_SHARED);
	mxid = MultiXactState->nextMXact;
	FUNC1(MultiXactGenLock);

	if (mxid < FirstMultiXactId)
		mxid = FirstMultiXactId;

	return mxid;
}
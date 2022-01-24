#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_5__ {scalar_t__* count; int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {int holdsStrongLockCount; int /*<<< orphan*/  hashcode; } ;
typedef  TYPE_1__ LOCALLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FastPathStrongRelationLocks ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* StrongLockInProgress ; 

void
FUNC4(void)
{
	uint32		fasthashcode;
	LOCALLOCK  *locallock = StrongLockInProgress;

	if (locallock == NULL)
		return;

	fasthashcode = FUNC1(locallock->hashcode);
	FUNC0(locallock->holdsStrongLockCount == true);
	FUNC2(&FastPathStrongRelationLocks->mutex);
	FUNC0(FastPathStrongRelationLocks->count[fasthashcode] > 0);
	FastPathStrongRelationLocks->count[fasthashcode]--;
	locallock->holdsStrongLockCount = false;
	StrongLockInProgress = NULL;
	FUNC3(&FastPathStrongRelationLocks->mutex);
}
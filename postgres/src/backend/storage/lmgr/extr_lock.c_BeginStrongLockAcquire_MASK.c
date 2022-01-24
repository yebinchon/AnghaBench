#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * count; } ;
struct TYPE_5__ {int holdsStrongLockCount; } ;
typedef  TYPE_1__ LOCALLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FastPathStrongRelationLocks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* StrongLockInProgress ; 

__attribute__((used)) static void
FUNC3(LOCALLOCK *locallock, uint32 fasthashcode)
{
	FUNC0(StrongLockInProgress == NULL);
	FUNC0(locallock->holdsStrongLockCount == false);

	/*
	 * Adding to a memory location is not atomic, so we take a spinlock to
	 * ensure we don't collide with someone else trying to bump the count at
	 * the same time.
	 *
	 * XXX: It might be worth considering using an atomic fetch-and-add
	 * instruction here, on architectures where that is supported.
	 */

	FUNC1(&FastPathStrongRelationLocks->mutex);
	FastPathStrongRelationLocks->count[fasthashcode]++;
	locallock->holdsStrongLockCount = true;
	StrongLockInProgress = locallock;
	FUNC2(&FastPathStrongRelationLocks->mutex);
}
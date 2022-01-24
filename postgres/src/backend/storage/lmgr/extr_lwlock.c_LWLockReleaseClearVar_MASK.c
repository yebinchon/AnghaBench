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
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  LWLock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(LWLock *lock, uint64 *valptr, uint64 val)
{
	FUNC1(lock);

	/*
	 * Set the variable's value before releasing the lock, that prevents race
	 * a race condition wherein a new locker acquires the lock, but hasn't yet
	 * set the variables value.
	 */
	*valptr = val;
	FUNC2(lock);

	FUNC0(lock);
}
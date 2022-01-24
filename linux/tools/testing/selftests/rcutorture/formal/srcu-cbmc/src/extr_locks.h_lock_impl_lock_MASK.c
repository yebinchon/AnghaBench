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
struct lock_impl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lock_impl*) ; 

__attribute__((used)) static inline void FUNC2(struct lock_impl *lock)
{
	/*
	 * CBMC doesn't support busy waiting, so just assume that the
	 * lock is available.
	 */
	FUNC0(FUNC1(lock));

	/*
	 * If the lock was already held by this thread then the assumption
	 * is unsatisfiable (deadlock).
	 */
}
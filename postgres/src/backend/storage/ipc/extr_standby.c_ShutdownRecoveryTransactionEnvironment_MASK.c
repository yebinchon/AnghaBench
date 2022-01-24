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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * RecoveryLockLists ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void)
{
	/* Mark all tracked in-progress transactions as finished. */
	FUNC0();

	/* Release all locks the tracked transactions were holding */
	FUNC1();

	/* Destroy the hash table of locks. */
	FUNC3(RecoveryLockLists);
	RecoveryLockLists = NULL;

	/* Cleanup our VirtualTransaction */
	FUNC2();
}
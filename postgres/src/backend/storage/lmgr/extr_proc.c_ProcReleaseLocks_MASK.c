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
 int /*<<< orphan*/  DEFAULT_LOCKMETHOD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MyProc ; 
 int /*<<< orphan*/  USER_LOCKMETHOD ; 

void
FUNC2(bool isCommit)
{
	if (!MyProc)
		return;
	/* If waiting, get off wait queue (should only be needed after error) */
	FUNC0();
	/* Release standard locks, including session-level if aborting */
	FUNC1(DEFAULT_LOCKMETHOD, !isCommit);
	/* Release transaction-level advisory locks */
	FUNC1(USER_LOCKMETHOD, false);
}
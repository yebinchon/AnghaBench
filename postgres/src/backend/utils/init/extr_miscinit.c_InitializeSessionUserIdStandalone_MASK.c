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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AuthenticatedUserId ; 
 int AuthenticatedUserIsSuperuser ; 
 int /*<<< orphan*/  BOOTSTRAP_SUPERUSERID ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ IsBackgroundWorker ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void
FUNC4(void)
{
	/*
	 * This function should only be called in single-user mode, in autovacuum
	 * workers, and in background workers.
	 */
	FUNC0(!IsUnderPostmaster || FUNC1() || IsBackgroundWorker);

	/* call only once */
	FUNC0(!FUNC2(AuthenticatedUserId));

	AuthenticatedUserId = BOOTSTRAP_SUPERUSERID;
	AuthenticatedUserIsSuperuser = true;

	FUNC3(BOOTSTRAP_SUPERUSERID, true);
}
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
 scalar_t__ IsUnderPostmaster ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int got_SIGHUP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ shutdown_requested ; 

void
FUNC4(void)
{
	/*
	 * Check if we were requested to re-read config file.
	 */
	if (got_SIGHUP)
	{
		got_SIGHUP = false;
		FUNC1(PGC_SIGHUP);
	}

	/*
	 * Check if we were requested to exit without finishing recovery.
	 */
	if (shutdown_requested)
		FUNC3(1);

	/*
	 * Emergency bailout if postmaster has died.  This is to avoid the
	 * necessity for manual cleanup of all postmaster children.
	 */
	if (IsUnderPostmaster && !FUNC0())
		FUNC2(1);
}
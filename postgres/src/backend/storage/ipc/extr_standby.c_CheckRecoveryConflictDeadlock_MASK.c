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
 int /*<<< orphan*/  ERRCODE_T_R_DEADLOCK_DETECTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  InRecovery ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6(void)
{
	FUNC0(!InRecovery);		/* do not call in Startup process */

	if (!FUNC1())
		return;

	/*
	 * Error message should match ProcessInterrupts() but we avoid calling
	 * that because we aren't handling an interrupt at this point. Note that
	 * we only cancel the current transaction here, so if we are in a
	 * subtransaction and the pin is held by a parent, then the Startup
	 * process will continue to wait even though we have avoided deadlock.
	 */
	FUNC2(ERROR,
			(FUNC3(ERRCODE_T_R_DEADLOCK_DETECTED),
			 FUNC5("canceling statement due to conflict with recovery"),
			 FUNC4("User transaction caused buffer deadlock with recovery.")));
}
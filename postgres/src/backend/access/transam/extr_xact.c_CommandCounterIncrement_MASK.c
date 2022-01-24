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
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidCommandId ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ currentCommandId ; 
 int currentCommandIdUsed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8(void)
{
	/*
	 * If the current value of the command counter hasn't been "used" to mark
	 * tuples, we need not increment it, since there's no need to distinguish
	 * a read-only command from others.  This helps postpone command counter
	 * overflow, and keeps no-op CommandCounterIncrement operations cheap.
	 */
	if (currentCommandIdUsed)
	{
		/*
		 * Workers synchronize transaction state at the beginning of each
		 * parallel operation, so we can't account for new commands after that
		 * point.
		 */
		if (FUNC1() || FUNC2())
			FUNC4(ERROR, "cannot start commands during a parallel operation");

		currentCommandId += 1;
		if (currentCommandId == InvalidCommandId)
		{
			currentCommandId -= 1;
			FUNC5(ERROR,
					(FUNC6(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC7("cannot have more than 2^32-2 commands in a transaction")));
		}
		currentCommandIdUsed = false;

		/* Propagate new command ID into static snapshots */
		FUNC3(currentCommandId);

		/*
		 * Make any catalog changes done by the just-completed command visible
		 * in the local syscache.  We obviously don't need to do this after a
		 * read-only command.  (But see hacks in inval.c to make real sure we
		 * don't think a command that queued inval messages was read-only.)
		 */
		FUNC0();
	}
}
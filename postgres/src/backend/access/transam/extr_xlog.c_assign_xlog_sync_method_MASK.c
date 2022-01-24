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
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  WAIT_EVENT_WAL_SYNC_METHOD_ASSIGN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ openLogFile ; 
 int /*<<< orphan*/  openLogSegNo ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int sync_method ; 

void
FUNC9(int new_sync_method, void *extra)
{
	if (sync_method != new_sync_method)
	{
		/*
		 * To ensure that no blocks escape unsynced, force an fsync on the
		 * currently open log segment (if any).  Also, if the open flag is
		 * changing, close the log file so it will be reopened (with new flag
		 * bit) at next use.
		 */
		if (openLogFile >= 0)
		{
			FUNC8(WAIT_EVENT_WAL_SYNC_METHOD_ASSIGN);
			if (FUNC6(openLogFile) != 0)
				FUNC2(PANIC,
						(FUNC3(),
						 FUNC4("could not fsync file \"%s\": %m",
								FUNC1(ThisTimeLineID, openLogSegNo))));
			FUNC7();
			if (FUNC5(sync_method) != FUNC5(new_sync_method))
				FUNC0();
		}
	}
}
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
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  LocalHotStandbyActive ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (long) ; 

__attribute__((used)) static void
FUNC6(void)
{
	/* Don't pause unless users can connect! */
	if (!LocalHotStandbyActive)
		return;

	FUNC2(LOG,
			(FUNC4("recovery has paused"),
			 FUNC3("Execute pg_wal_replay_resume() to continue.")));

	while (FUNC1())
	{
		FUNC5(1000000L);	/* 1000 ms */
		FUNC0();
	}
}
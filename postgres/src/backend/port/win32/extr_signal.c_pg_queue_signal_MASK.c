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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int PG_SIGNAL_COUNT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pg_signal_crit_sec ; 
 int /*<<< orphan*/  pg_signal_queue ; 
 int /*<<< orphan*/ * pgwin32_signal_event ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(int signum)
{
	FUNC0(pgwin32_signal_event != NULL);
	if (signum >= PG_SIGNAL_COUNT || signum <= 0)
		return;

	FUNC1(&pg_signal_crit_sec);
	pg_signal_queue |= FUNC4(signum);
	FUNC2(&pg_signal_crit_sec);

	FUNC3(pgwin32_signal_event);
}
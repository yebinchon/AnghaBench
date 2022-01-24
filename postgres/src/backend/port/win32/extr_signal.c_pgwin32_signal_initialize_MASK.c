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
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int PG_SIGNAL_COUNT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  pg_console_handler ; 
 int /*<<< orphan*/ * pg_signal_array ; 
 int /*<<< orphan*/  pg_signal_crit_sec ; 
 int /*<<< orphan*/ * pg_signal_defaults ; 
 scalar_t__ pg_signal_mask ; 
 scalar_t__ pg_signal_queue ; 
 int /*<<< orphan*/  pg_signal_thread ; 
 int /*<<< orphan*/ * pgwin32_signal_event ; 

void
FUNC7(void)
{
	int			i;
	HANDLE		signal_thread_handle;

	FUNC3(&pg_signal_crit_sec);

	for (i = 0; i < PG_SIGNAL_COUNT; i++)
	{
		pg_signal_array[i] = SIG_DFL;
		pg_signal_defaults[i] = SIG_IGN;
	}
	pg_signal_mask = 0;
	pg_signal_queue = 0;

	/* Create the global event handle used to flag signals */
	pgwin32_signal_event = FUNC0(NULL, TRUE, FALSE, NULL);
	if (pgwin32_signal_event == NULL)
		FUNC5(FATAL,
				(FUNC6("could not create signal event: error code %lu", FUNC2())));

	/* Create thread for handling signals */
	signal_thread_handle = FUNC1(NULL, 0, pg_signal_thread, NULL, 0, NULL);
	if (signal_thread_handle == NULL)
		FUNC5(FATAL,
				(FUNC6("could not create signal handler thread")));

	/* Create console control handle to pick up Ctrl-C etc */
	if (!FUNC4(pg_console_handler, TRUE))
		FUNC5(FATAL,
				(FUNC6("could not set console control handler")));
}
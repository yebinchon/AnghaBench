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
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ Trace_notify ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ listenChannels ; 
 int notifyInterruptPending ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(void)
{
	/* We *must* reset the flag */
	notifyInterruptPending = false;

	/* Do nothing else if we aren't actively listening */
	if (listenChannels == NIL)
		return;

	if (Trace_notify)
		FUNC3(DEBUG1, "ProcessIncomingNotify");

	FUNC5("notify interrupt", false);

	/*
	 * We must run asyncQueueReadAllNotifications inside a transaction, else
	 * bad things happen if it gets an error.
	 */
	FUNC1();

	FUNC2();

	FUNC0();

	/*
	 * Must flush the notify messages to ensure frontend gets them promptly.
	 */
	FUNC4();

	FUNC5("idle", false);

	if (Trace_notify)
		FUNC3(DEBUG1, "ProcessIncomingNotify: done");
}
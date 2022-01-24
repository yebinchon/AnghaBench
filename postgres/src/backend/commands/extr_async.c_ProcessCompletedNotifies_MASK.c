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
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ Trace_notify ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int backendHasSentNotifications ; 
 int backendTryAdvanceTail ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ listenChannels ; 

void
FUNC7(void)
{
	MemoryContext caller_context;

	/* Nothing to do if we didn't send any notifications */
	if (!backendHasSentNotifications)
		return;

	/*
	 * We reset the flag immediately; otherwise, if any sort of error occurs
	 * below, we'd be locked up in an infinite loop, because control will come
	 * right back here after error cleanup.
	 */
	backendHasSentNotifications = false;

	/*
	 * We must preserve the caller's memory context (probably MessageContext)
	 * across the transaction we do here.
	 */
	caller_context = CurrentMemoryContext;

	if (Trace_notify)
		FUNC6(DEBUG1, "ProcessCompletedNotifies");

	/*
	 * We must run asyncQueueReadAllNotifications inside a transaction, else
	 * bad things happen if it gets an error.
	 */
	FUNC3();

	/* Send signals to other backends */
	FUNC2();

	if (listenChannels != NIL)
	{
		/* Read the queue ourselves, and send relevant stuff to the frontend */
		FUNC5();
	}

	/*
	 * If it's time to try to advance the global tail pointer, do that.
	 */
	if (backendTryAdvanceTail)
	{
		backendTryAdvanceTail = false;
		FUNC4();
	}

	FUNC0();

	FUNC1(caller_context);

	/* We don't need pq_flush() here since postgres.c will do one shortly */
}
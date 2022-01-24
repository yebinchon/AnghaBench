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
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  LISTEN_UNLISTEN ; 
 int /*<<< orphan*/  MyProcPid ; 
 scalar_t__ Trace_notify ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pendingActions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  unlistenExitRegistered ; 

void
FUNC2(const char *channel)
{
	if (Trace_notify)
		FUNC0(DEBUG1, "Async_Unlisten(%s,%d)", channel, MyProcPid);

	/* If we couldn't possibly be listening, no need to queue anything */
	if (pendingActions == NULL && !unlistenExitRegistered)
		return;

	FUNC1(LISTEN_UNLISTEN, channel);
}
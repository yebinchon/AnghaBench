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
 scalar_t__ NIL ; 
 scalar_t__ amRegisteredListener ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ listenChannels ; 

void
FUNC2(void)
{
	/*
	 * If we LISTEN but then roll back the transaction after PreCommit_Notify,
	 * we have registered as a listener but have not made any entry in
	 * listenChannels.  In that case, deregister again.
	 */
	if (amRegisteredListener && listenChannels == NIL)
		FUNC1();

	/* And clean up */
	FUNC0();
}
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
 scalar_t__ UNRESONABLE_LATENCY ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ max_latency_ns ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int timer_fired_early ; 

int FUNC2(int flags, int interval)
{
	int err = 0;

	FUNC0(flags, interval);
	FUNC1("timer fired early: %7d : ", timer_fired_early);
	if (!timer_fired_early) {
		FUNC1("[OK]\n");
	} else {
		FUNC1("[FAILED]\n");
		err = -1;
	}

	FUNC0(flags, interval);
	FUNC1("max latency: %10lld ns : ", max_latency_ns);

	if (max_latency_ns < UNRESONABLE_LATENCY) {
		FUNC1("[OK]\n");
	} else {
		FUNC1("[FAILED]\n");
		err = -1;
	}
	return err;
}
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
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 long long NSEC_PER_SEC ; 
 long long SUSPEND_SECS ; 
 long long UNREASONABLE_LAT ; 
 int /*<<< orphan*/  alarm_clock_id ; 
 long long alarmcount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int final_ret ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  start_time ; 
 long long FUNC2 (int /*<<< orphan*/ ,struct timespec) ; 

void FUNC3(int signo)
{
	long long delta_ns;
	struct timespec ts;

	FUNC0(alarm_clock_id, &ts);
	alarmcount++;

	delta_ns = FUNC2(start_time, ts);
	delta_ns -= NSEC_PER_SEC * SUSPEND_SECS * alarmcount;

	FUNC1("ALARM(%i): %ld:%ld latency: %lld ns ", alarmcount, ts.tv_sec,
							ts.tv_nsec, delta_ns);

	if (delta_ns > UNREASONABLE_LAT) {
		FUNC1("[FAIL]\n");
		final_ret = -1;
	} else
		FUNC1("[OK]\n");

}
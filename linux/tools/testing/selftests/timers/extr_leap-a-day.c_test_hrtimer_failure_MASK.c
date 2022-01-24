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
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  TIMER_ABSTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec*,int /*<<< orphan*/ *) ; 
 int error_found ; 
 int /*<<< orphan*/  FUNC2 (struct timespec,struct timespec) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct timespec FUNC4 (struct timespec,int) ; 

void FUNC5(void)
{
	struct timespec now, target;

	FUNC0(CLOCK_REALTIME, &now);
	target = FUNC4(now, NSEC_PER_SEC/2);
	FUNC1(CLOCK_REALTIME, TIMER_ABSTIME, &target, NULL);
	FUNC0(CLOCK_REALTIME, &now);

	if (!FUNC2(target, now)) {
		FUNC3("ERROR: hrtimer early expiration failure observed.\n");
		error_found = 1;
	}
}
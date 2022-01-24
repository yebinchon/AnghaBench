#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct fpm_event_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ parent_pid; int /*<<< orphan*/  heartbeat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_EV_PERSIST ; 
 short FPM_EV_TIMEOUT ; 
 int /*<<< orphan*/  FPM_PCTL_MIN_HEARTBEAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZLOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (struct fpm_event_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fpm_event_s*,int /*<<< orphan*/ ,void (*) (struct fpm_event_s*,short,void*),int /*<<< orphan*/ *) ; 
 TYPE_1__ fpm_globals ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC7(struct fpm_event_s *ev, short which, void *arg) /* {{{ */
{
	static struct fpm_event_s heartbeat;
	struct timeval now;

	if (fpm_globals.parent_pid != FUNC5()) {
		return; /* sanity check */
	}

	if (which == FPM_EV_TIMEOUT) {
		FUNC1(&now);
		FUNC4(&now);
		return;
	}

	/* ensure heartbeat is not lower than FPM_PCTL_MIN_HEARTBEAT */
	fpm_globals.heartbeat = FUNC0(fpm_globals.heartbeat, FPM_PCTL_MIN_HEARTBEAT);

	/* first call without setting to initialize the timer */
	FUNC6(ZLOG_DEBUG, "heartbeat have been set up with a timeout of %dms", fpm_globals.heartbeat);
	FUNC3(&heartbeat, FPM_EV_PERSIST, &fpm_pctl_heartbeat, NULL);
	FUNC2(&heartbeat, fpm_globals.heartbeat);
}
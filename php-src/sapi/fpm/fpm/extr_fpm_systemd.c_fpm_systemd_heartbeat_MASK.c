#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fpm_event_s {int dummy; } ;
struct TYPE_4__ {scalar_t__ systemd_interval; } ;
struct TYPE_3__ {scalar_t__ parent_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_EV_PERSIST ; 
 short FPM_EV_TIMEOUT ; 
 int /*<<< orphan*/  ZLOG_DEBUG ; 
 int /*<<< orphan*/  ZLOG_NOTICE ; 
 int /*<<< orphan*/  ZLOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct fpm_event_s*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fpm_event_s*,int /*<<< orphan*/ ,void (*) (struct fpm_event_s*,short,void*),int /*<<< orphan*/ *) ; 
 TYPE_2__ fpm_global_config ; 
 TYPE_1__ fpm_globals ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC6(struct fpm_event_s *ev, short which, void *arg) /* {{{ */
{
	static struct fpm_event_s heartbeat;

	if (fpm_globals.parent_pid != FUNC3()) {
		return; /* sanity check */
	}

	if (which == FPM_EV_TIMEOUT) {
		FUNC2();

		return;
	}

	if (0 > FUNC4(0, "READY=1\n"
			          "STATUS=Ready to handle connections\n"
			          "MAINPID=%lu",
			          (unsigned long) FUNC3())) {
		FUNC5(ZLOG_WARNING, "failed to notify start to systemd");
	} else {
		FUNC5(ZLOG_DEBUG, "have notify start to systemd");
	}

	/* first call without setting which to initialize the timer */
	if (fpm_global_config.systemd_interval > 0) {
		FUNC1(&heartbeat, FPM_EV_PERSIST, &fpm_systemd_heartbeat, NULL);
		FUNC0(&heartbeat, fpm_global_config.systemd_interval);
		FUNC5(ZLOG_NOTICE, "systemd monitor interval set to %dms", fpm_global_config.systemd_interval);
	} else {
		FUNC5(ZLOG_NOTICE, "systemd monitor disabled");
	}
}
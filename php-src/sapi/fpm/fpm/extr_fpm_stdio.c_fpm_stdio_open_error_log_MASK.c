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
struct TYPE_4__ {int /*<<< orphan*/  error_log; int /*<<< orphan*/  syslog_facility; int /*<<< orphan*/  syslog_ident; } ;
struct TYPE_3__ {int error_log_fd; } ;

/* Variables and functions */
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int LOG_CONS ; 
 int LOG_PID ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int STDERR_FILENO ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int ZLOG_SYSLOG ; 
 int /*<<< orphan*/  ZLOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,...) ; 
 TYPE_2__ fpm_global_config ; 
 TYPE_1__ fpm_globals ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

int FUNC9(int reopen) /* {{{ */
{
	int fd;

#ifdef HAVE_SYSLOG_H
	if (!strcasecmp(fpm_global_config.error_log, "syslog")) {
		php_openlog(fpm_global_config.syslog_ident, LOG_PID | LOG_CONS, fpm_global_config.syslog_facility);
		fpm_globals.error_log_fd = ZLOG_SYSLOG;
		if (fpm_use_error_log()) {
			zlog_set_fd(fpm_globals.error_log_fd);
		}
		return 0;
	}
#endif

	fd = FUNC4(fpm_global_config.error_log, O_WRONLY | O_APPEND | O_CREAT, S_IRUSR | S_IWUSR);
	if (0 > fd) {
		FUNC7(ZLOG_SYSERROR, "failed to open error_log (%s)", fpm_global_config.error_log);
		return -1;
	}

	if (reopen) {
		if (FUNC3()) {
			FUNC1(fd, STDERR_FILENO);
		}

		FUNC1(fd, fpm_globals.error_log_fd);
		FUNC0(fd);
		fd = fpm_globals.error_log_fd; /* for FD_CLOSEXEC to work */
	} else {
		fpm_globals.error_log_fd = fd;
		if (FUNC3()) {
			FUNC8(fpm_globals.error_log_fd);
		}
	}
	if (0 > FUNC2(fd, F_SETFD, FUNC2(fd, F_GETFD) | FD_CLOEXEC)) {
		FUNC7(ZLOG_WARNING, "failed to change attribute of error_log");
	}
	return 0;
}
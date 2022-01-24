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
struct fpm_worker_pool_s {int dummy; } ;
struct TYPE_2__ {int error_log_fd; } ;

/* Variables and functions */
 int ZLOG_SYSLOG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ fpm_globals ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct fpm_worker_pool_s *wp) /* {{{ */
{
#ifdef HAVE_SYSLOG_H
	if (fpm_globals.error_log_fd == ZLOG_SYSLOG) {
		closelog(); /* ensure to close syslog not to interrupt with PHP syslog code */
	} else
#endif

	/* Notice: child cannot use master error_log
	 * because not aware when being reopen
	 * else, should use if (!fpm_use_error_log())
	 */
	if (fpm_globals.error_log_fd > 0) {
		FUNC0(fpm_globals.error_log_fd);
	}
	fpm_globals.error_log_fd = -1;
	FUNC2(-1);

	return 0;
}
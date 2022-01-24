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
struct TYPE_4__ {scalar_t__ pid_file; } ;
struct TYPE_3__ {scalar_t__ parent_pid; } ;

/* Variables and functions */
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__,int) ; 
 TYPE_2__ fpm_global_config ; 
 TYPE_1__ fpm_globals ; 
 int FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC6() /* {{{ */
{
	int fd;

	if (fpm_global_config.pid_file) {
		char buf[64];
		int len;

		FUNC3(fpm_global_config.pid_file);
		fd = FUNC1(fpm_global_config.pid_file, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);

		if (fd < 0) {
			FUNC5(ZLOG_SYSERROR, "Unable to create the PID file (%s).", fpm_global_config.pid_file);
			return -1;
		}

		len = FUNC2(buf, "%d", (int) fpm_globals.parent_pid);

		if (len != FUNC4(fd, buf, len)) {
			FUNC5(ZLOG_SYSERROR, "Unable to write to the PID file.");
			FUNC0(fd);
			return -1;
		}
		FUNC0(fd);
	}
	return 0;
}
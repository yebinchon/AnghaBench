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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int EINVAL ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int INT_MAX ; 
 int SD_LISTEN_FDS_START ; 
 int errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,...) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(int unset_environment) {
        int n, l, r, fd;
        const char *e;

        e = FUNC1("LISTEN_PID");
        if (!e) {
                r = 0;
                goto finish;
        }

        l = FUNC3(e, -1);
        if (l <= 0) {
                r = -EINVAL;
                goto finish;
        }

        /* Is this for us? */
        if (FUNC2() != (pid_t)l) {
                r = 0;
                goto finish;
        }

        e = FUNC1("LISTEN_FDS");
        if (!e) {
                r = 0;
                goto finish;
        }

        n = FUNC3(e, -1);
        if (!n) {
                r = 0;
                goto finish;
        }

        FUNC4(SD_LISTEN_FDS_START < INT_MAX, "");
        if (n < 0 || n > INT_MAX - SD_LISTEN_FDS_START) {
                r = -EINVAL;
                goto finish;
        }

        for (fd = SD_LISTEN_FDS_START; fd < SD_LISTEN_FDS_START + (int)n; fd++) {
                int flags;

                flags = FUNC0(fd, F_GETFD);
                if (flags < 0) {
                        r = -errno;
                        goto finish;
                }

                if (flags & FD_CLOEXEC)
                        continue;

                if (FUNC0(fd, F_SETFD, flags | FD_CLOEXEC) < 0) {
                        r = -errno;
                        goto finish;
                }
        }

        r = n;

finish:
        if (unset_environment) {
                FUNC5("LISTEN_PID");
                FUNC5("LISTEN_FDS");
        }

        return r;
}
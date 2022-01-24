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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

int FUNC4(int pid, char *cmdline) {
        int fd;
        FUNC3(cmdline, "/proc/%d/cmdline", pid);
        fd = FUNC1(cmdline, O_RDONLY);
        cmdline[0] = '\0';
        if (fd != -1) {
                FUNC2(fd, cmdline, 1024);
                cmdline[1024] = '\0';
                FUNC0(fd);
        }

        return 0;
}
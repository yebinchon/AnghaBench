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
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char const*,int,char const*) ; 

int FUNC3(const char *prefix, const char *ns, pid_t pid) {
    if(!prefix) prefix = "";

    char filename[FILENAME_MAX + 1];
    FUNC2(filename, FILENAME_MAX, "%s/proc/%d/%s", prefix, (int)pid, ns);
    int fd = FUNC1(filename, O_RDONLY);

    if(fd == -1)
        FUNC0("Cannot open proc_pid_fd() file '%s'", filename);

    return fd;
}
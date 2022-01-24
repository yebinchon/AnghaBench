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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,char const*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  procfile_open_flags ; 

pid_t FUNC7(const char *filename) {
    int fd = FUNC6(filename, procfile_open_flags);
    if(fd == -1) {
        FUNC1("Cannot open pid_from_cgroup() file '%s'.", filename);
        return 0;
    }

    FILE *fp = FUNC3(fd, "r");
    if(!fp) {
        FUNC1("Cannot upgrade fd to fp for file '%s'.", filename);
        return 0;
    }

    char buffer[100 + 1];
    pid_t pid = 0;
    char *s;
    while((s = FUNC4(buffer, 100, fp))) {
        buffer[100] = '\0';
        pid = FUNC0(s);
        if(pid > 0) break;
    }

    FUNC2(fp);

#ifdef NETDATA_INTERNAL_CHECKS
    if(pid > 0) info("found pid %d on file '%s'", pid, filename);
#endif

    return pid;
}
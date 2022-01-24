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
typedef  int /*<<< orphan*/  tmp_pid_file ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,long) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char const*) ; 
 scalar_t__ FUNC8 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 

__attribute__((used)) static void FUNC11(const char *pid_file) {
    FILE *fp;
    if (FUNC0(pid_file, F_OK) == 0) {
        if ((fp = FUNC3(pid_file, "r")) != NULL) {
            char buffer[1024];
            if (FUNC2(buffer, sizeof(buffer), fp) != NULL) {
                unsigned int pid;
                if (FUNC8(buffer, &pid) && FUNC6((pid_t)pid, 0) == 0) {
                    FUNC4(stderr, "WARNING: The pid file contained the following (running) pid: %u\n", pid);
                }
            }
            FUNC1(fp);
        }
    }

    /* Create the pid file first with a temporary name, then
     * atomically move the file to the real name to avoid a race with
     * another process opening the file to read the pid, but finding
     * it empty.
     */
    char tmp_pid_file[1024];
    FUNC9(tmp_pid_file, sizeof(tmp_pid_file), "%s.tmp", pid_file);

    if ((fp = FUNC3(tmp_pid_file, "w")) == NULL) {
        FUNC10("Could not open the pid file %s for writing", tmp_pid_file);
        return;
    }

    FUNC4(fp,"%ld\n", (long)FUNC5());
    if (FUNC1(fp) == -1) {
        FUNC10("Could not close the pid file %s", tmp_pid_file);
    }

    if (FUNC7(tmp_pid_file, pid_file) != 0) {
        FUNC10("Could not rename the pid file from %s to %s",
                tmp_pid_file, pid_file);
    }
}
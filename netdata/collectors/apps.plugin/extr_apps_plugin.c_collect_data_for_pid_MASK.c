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
struct pid_stat {int read; scalar_t__ ppid; char* comm; int updated; scalar_t__ keeploops; scalar_t__ keep; int /*<<< orphan*/  sortlist; int /*<<< orphan*/  pid; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  sortlist; int /*<<< orphan*/  comm; int /*<<< orphan*/  pid; int /*<<< orphan*/  read; } ;

/* Variables and functions */
 int /*<<< orphan*/  PID_LOG_FDS ; 
 int /*<<< orphan*/  PID_LOG_IO ; 
 int /*<<< orphan*/  PID_LOG_STAT ; 
 int /*<<< orphan*/  PID_LOG_STATUS ; 
 TYPE_1__** all_pids ; 
 scalar_t__ all_pids_count ; 
 scalar_t__ debug_enabled ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ enable_file_charts ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,char*,scalar_t__) ; 
 struct pid_stat* FUNC2 (scalar_t__) ; 
 scalar_t__ include_exited_childs ; 
 int /*<<< orphan*/  FUNC3 (struct pid_stat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pid_max ; 
 int /*<<< orphan*/  FUNC4 (struct pid_stat*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct pid_stat*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct pid_stat*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct pid_stat*,void*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static inline int FUNC9(pid_t pid, void *ptr) {
    if(FUNC8(pid < 0 || pid > pid_max)) {
        FUNC1("Invalid pid %d read (expected %d to %d). Ignoring process.", pid, 0, pid_max);
        return 0;
    }

    struct pid_stat *p = FUNC2(pid);
    if(FUNC8(!p || p->read)) return 0;
    p->read = 1;

    // debug_log("Reading process %d (%s), sortlist %d", p->pid, p->comm, p->sortlist);

    // --------------------------------------------------------------------
    // /proc/<pid>/stat

    if(FUNC8(!FUNC3(p, PID_LOG_STAT, FUNC6(p, ptr))))
        // there is no reason to proceed if we cannot get its status
        return 0;

    // check its parent pid
    if(FUNC8(p->ppid < 0 || p->ppid > pid_max)) {
        FUNC1("Pid %d (command '%s') states invalid parent pid %d. Using 0.", pid, p->comm, p->ppid);
        p->ppid = 0;
    }

    // --------------------------------------------------------------------
    // /proc/<pid>/io

    FUNC3(p, PID_LOG_IO, FUNC5(p, ptr));

    // --------------------------------------------------------------------
    // /proc/<pid>/status

    if(FUNC8(!FUNC3(p, PID_LOG_STATUS, FUNC7(p, ptr))))
        // there is no reason to proceed if we cannot get its status
        return 0;

    // --------------------------------------------------------------------
    // /proc/<pid>/fd

    if(enable_file_charts)
            FUNC3(p, PID_LOG_FDS, FUNC4(p, ptr));

    // --------------------------------------------------------------------
    // done!

    if(FUNC8(debug_enabled && include_exited_childs && all_pids_count && p->ppid && all_pids[p->ppid] && !all_pids[p->ppid]->read))
        FUNC0("Read process %d (%s) sortlisted %d, but its parent %d (%s) sortlisted %d, is not read", p->pid, p->comm, p->sortlist, all_pids[p->ppid]->pid, all_pids[p->ppid]->comm, all_pids[p->ppid]->sortlist);

    // mark it as updated
    p->updated = 1;
    p->keep = 0;
    p->keeploops = 0;

    return 1;
}
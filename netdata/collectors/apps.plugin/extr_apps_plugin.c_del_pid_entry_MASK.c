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
struct pid_stat {size_t fds_size; struct pid_stat* cmdline; struct pid_stat* cmdline_filename; struct pid_stat* io_filename; int /*<<< orphan*/  status_arl; struct pid_stat* status_filename; struct pid_stat* stat_filename; struct pid_stat* fds_dirname; struct pid_stat* fds; struct pid_stat* filename; struct pid_stat* next; TYPE_1__* prev; int /*<<< orphan*/  comm; } ;
typedef  size_t pid_t ;
struct TYPE_2__ {struct pid_stat* next; } ;

/* Variables and functions */
 struct pid_stat** all_pids ; 
 int /*<<< orphan*/  all_pids_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct pid_stat*) ; 
 struct pid_stat* root_of_pids ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline void FUNC5(pid_t pid) {
    struct pid_stat *p = all_pids[pid];

    if(FUNC4(!p)) {
        FUNC2("attempted to free pid %d that is not allocated.", pid);
        return;
    }

    FUNC1("process %d %s exited, deleting it.", pid, p->comm);

    if(root_of_pids == p)
        root_of_pids = p->next;

    if(p->next) p->next->prev = p->prev;
    if(p->prev) p->prev->next = p->next;

    // free the filename
#ifndef __FreeBSD__
    {
        size_t i;
        for(i = 0; i < p->fds_size; i++)
            if(p->fds[i].filename)
                FUNC3(p->fds[i].filename);
    }
#endif
    FUNC3(p->fds);

    FUNC3(p->fds_dirname);
    FUNC3(p->stat_filename);
    FUNC3(p->status_filename);
#ifndef __FreeBSD__
    FUNC0(p->status_arl);
#endif
    FUNC3(p->io_filename);
    FUNC3(p->cmdline_filename);
    FUNC3(p->cmdline);
    FUNC3(p);

    all_pids[pid] = NULL;
    all_pids_count--;
}
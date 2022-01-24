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
struct pid_stat {int keep; scalar_t__ keeploops; size_t fds_size; struct pid_stat* next; int /*<<< orphan*/  pid; TYPE_1__* fds; int /*<<< orphan*/  comm; int /*<<< orphan*/  updated; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_2__ {scalar_t__ fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ debug_enabled ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct pid_stat* root_of_pids ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void) {
    size_t c;
    struct pid_stat *p = NULL;

    for(p = root_of_pids; p ;) {
        if(!p->updated && (!p->keep || p->keeploops > 0)) {
            if(FUNC4(debug_enabled && (p->keep || p->keeploops)))
                FUNC1(" > CLEANUP cannot keep exited process %d (%s) anymore - removing it.", p->pid, p->comm);

            for(c = 0; c < p->fds_size; c++)
                if(p->fds[c].fd > 0) {
                    FUNC3(p->fds[c].fd);
                    FUNC0(&p->fds[c]);
                }

            pid_t r = p->pid;
            p = p->next;
            FUNC2(r);
        }
        else {
            if(FUNC4(p->keep)) p->keeploops++;
            p->keep = 0;
            p = p->next;
        }
    }
}
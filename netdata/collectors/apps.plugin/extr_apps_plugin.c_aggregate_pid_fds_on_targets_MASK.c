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
struct target {int dummy; } ;
struct pid_stat {size_t fds_size; struct pid_fd* fds; struct target* group_target; struct target* user_target; struct target* target; int /*<<< orphan*/  updated; } ;
struct pid_fd {int fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct target*) ; 
 int all_files_size ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct target*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(struct pid_stat *p) {

    if(FUNC3(!p->updated)) {
        // the process is not running
        return;
    }

    struct target *w = p->target, *u = p->user_target, *g = p->group_target;

    FUNC2(w);
    FUNC2(u);
    FUNC2(g);

    size_t c, size = p->fds_size;
    struct pid_fd *fds = p->fds;
    for(c = 0; c < size ;c++) {
        int fd = fds[c].fd;

        if(FUNC1(fd <= 0 || fd >= all_files_size))
            continue;

        FUNC0(fd, w);
        FUNC0(fd, u);
        FUNC0(fd, g);
    }
}
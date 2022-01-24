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
struct pid_stat {size_t fds_size; struct pid_fd* fds; } ;
struct pid_fd {int fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pid_fd*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct pid_stat *p) {
    struct pid_fd *pfd = p->fds, *pfdend = &p->fds[p->fds_size];

    while(pfd < pfdend) {
        int fd = pfd->fd;

        if(FUNC2(fd < 0)) {
            FUNC1(-(fd));
            FUNC0(pfd);
        }

        pfd++;
    }
}
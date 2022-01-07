
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_stat {struct pid_fd* fds; } ;
struct pid_fd {int * filename; } ;


 int clear_pid_fd (struct pid_fd*) ;

__attribute__((used)) static inline void init_pid_fds(struct pid_stat *p, size_t first, size_t size) {
    struct pid_fd *pfd = &p->fds[first], *pfdend = &p->fds[first + size];
    size_t i = first;

    while(pfd < pfdend) {

        pfd->filename = ((void*)0);

        clear_pid_fd(pfd);
        pfd++;
        i++;
    }
}

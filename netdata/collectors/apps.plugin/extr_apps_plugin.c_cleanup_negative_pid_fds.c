
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_stat {size_t fds_size; struct pid_fd* fds; } ;
struct pid_fd {int fd; } ;


 int clear_pid_fd (struct pid_fd*) ;
 int file_descriptor_not_used (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void cleanup_negative_pid_fds(struct pid_stat *p) {
    struct pid_fd *pfd = p->fds, *pfdend = &p->fds[p->fds_size];

    while(pfd < pfdend) {
        int fd = pfd->fd;

        if(unlikely(fd < 0)) {
            file_descriptor_not_used(-(fd));
            clear_pid_fd(pfd);
        }

        pfd++;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int EINVAL ;
 int F_SETFL ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int accept (int,struct sockaddr*,int *) ;
 int close (int) ;
 int errno ;
 scalar_t__ fcntl (int,int ,int) ;

int accept4(int sock, struct sockaddr *addr, socklen_t *addrlen, int flags) {
    int fd = accept(sock, addr, addrlen);
    int newflags = 0;

    if (fd < 0) return fd;

    if (flags & SOCK_NONBLOCK) {
        newflags |= O_NONBLOCK;
        flags &= ~SOCK_NONBLOCK;
    }
    if (flags) {
        close(fd);
        errno = EINVAL;
        return -1;
    }

    if (fcntl(fd, F_SETFL, newflags) < 0) {
        int saved_errno = errno;
        close(fd);
        errno = saved_errno;
        return -1;
    }

    return fd;
}

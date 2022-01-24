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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int SOCK_CLOEXEC ; 
 int SOCK_NONBLOCK ; 
 int FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 

int FUNC3(int sock, struct sockaddr *addr, socklen_t *addrlen, int flags) {
    int fd = FUNC0(sock, addr, addrlen);
    int newflags = 0;

    if (fd < 0) return fd;

    if (flags & SOCK_NONBLOCK) {
        newflags |= O_NONBLOCK;
        flags &= ~SOCK_NONBLOCK;
    }

#ifdef SOCK_CLOEXEC
#ifdef O_CLOEXEC
    if (flags & SOCK_CLOEXEC) {
        newflags |= O_CLOEXEC;
        flags &= ~SOCK_CLOEXEC;
    }
#endif
#endif

    if (flags) {
        FUNC1(fd);
        errno = EINVAL;
        return -1;
    }

    if (FUNC2(fd, F_SETFL, newflags) < 0) {
        int saved_errno = errno;
        FUNC1(fd);
        errno = saved_errno;
        return -1;
    }

    return fd;
}
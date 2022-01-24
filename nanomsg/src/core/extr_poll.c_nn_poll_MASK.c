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
struct pollfd {int fd; int events; int revents; } ;
struct nn_pollfd {int events; int revents; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  fd ;

/* Variables and functions */
 int NN_POLLIN ; 
 int NN_POLLOUT ; 
 int /*<<< orphan*/  NN_RCVFD ; 
 int /*<<< orphan*/  NN_SNDFD ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int POLLIN ; 
 int /*<<< orphan*/  FUNC0 (struct pollfd*) ; 
 int errno ; 
 struct pollfd* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pollfd*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct pollfd*,int,int) ; 

int FUNC7 (struct nn_pollfd *fds, int nfds, int timeout)
{
    int rc;
    int i;
    int pos;
    int fd;
    int res;
    size_t sz;
    struct pollfd *pfd;

    /*  Construct a pollset to be used with OS-level 'poll' function. */
    pfd = FUNC1 (sizeof (struct pollfd) * nfds * 2, "pollset");
    FUNC0 (pfd);
    pos = 0;
    for (i = 0; i != nfds; ++i) {
        if (fds [i].events & NN_POLLIN) {
            sz = sizeof (fd);
            rc = FUNC4 (fds [i].fd, NN_SOL_SOCKET, NN_RCVFD, &fd, &sz);
            if (FUNC5 (rc < 0)) {
                FUNC3 (pfd);
                return -1;
            }
            FUNC2 (sz == sizeof (fd));
            pfd [pos].fd = fd;
            pfd [pos].events = POLLIN;
            ++pos;
        }
        if (fds [i].events & NN_POLLOUT) {
            sz = sizeof (fd);
            rc = FUNC4 (fds [i].fd, NN_SOL_SOCKET, NN_SNDFD, &fd, &sz);
            if (FUNC5 (rc < 0)) {
                FUNC3 (pfd);
                return -1;
            }
            FUNC2 (sz == sizeof (fd));
            pfd [pos].fd = fd;
            pfd [pos].events = POLLIN;
            ++pos;
        }
    }    

    /*  Do the polling itself. */
    rc = FUNC6 (pfd, pos, timeout);
    if (FUNC5 (rc <= 0)) {
        res = errno;
        FUNC3 (pfd);
        errno = res;
        return rc;
    }

    /*  Move the results from OS-level poll to nn_poll's pollset. */
    res = 0;
    pos = 0;
    for (i = 0; i != nfds; ++i) {
        fds [i].revents = 0;
        if (fds [i].events & NN_POLLIN) {
            if (pfd [pos].revents & POLLIN)
                fds [i].revents |= NN_POLLIN;
            ++pos;
        }
        if (fds [i].events & NN_POLLOUT) {
            if (pfd [pos].revents & POLLIN)
                fds [i].revents |= NN_POLLOUT;
            ++pos;
        }
        if (fds [i].revents)
            ++res;
    }

    FUNC3 (pfd);
    return res;
}
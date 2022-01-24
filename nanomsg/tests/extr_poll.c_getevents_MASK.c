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
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int /*<<< orphan*/  sndfd ;
typedef  int /*<<< orphan*/  rcvfd ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int NN_IN ; 
 int NN_OUT ; 
 int /*<<< orphan*/  NN_RCVFD ; 
 int /*<<< orphan*/  NN_SNDFD ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t*) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8 (int s, int events, int timeout)
{
    int rc;
    fd_set pollset;
#if defined NN_HAVE_WINDOWS
    SOCKET rcvfd;
    SOCKET sndfd;
#else
    int rcvfd;
    int sndfd;
    int maxfd;
#endif
    size_t fdsz;
    struct timeval tv;
    int revents;

#if !defined NN_HAVE_WINDOWS
    maxfd = 0;
#endif
    FUNC2 (&pollset);

    if (events & NN_IN) {
        fdsz = sizeof (rcvfd);
        rc = FUNC5 (s, NN_SOL_SOCKET, NN_RCVFD, (char*) &rcvfd, &fdsz);
        FUNC3 (rc == 0);
        FUNC4 (fdsz == sizeof (rcvfd));
        FUNC1 (rcvfd, &pollset);
#if !defined NN_HAVE_WINDOWS
        if (rcvfd + 1 > maxfd)
            maxfd = rcvfd + 1;
#endif
    }

    if (events & NN_OUT) {
        fdsz = sizeof (sndfd);
        rc = FUNC5 (s, NN_SOL_SOCKET, NN_SNDFD, (char*) &sndfd, &fdsz);
        FUNC3 (rc == 0);
        FUNC4 (fdsz == sizeof (sndfd));
        FUNC1 (sndfd, &pollset);
#if !defined NN_HAVE_WINDOWS
        if (sndfd + 1 > maxfd)
            maxfd = sndfd + 1;
#endif
    }

    if (timeout >= 0) {
        tv.tv_sec = timeout / 1000;
        tv.tv_usec = (timeout % 1000) * 1000;
    }
#if defined NN_HAVE_WINDOWS
    rc = select (0, &pollset, NULL, NULL, timeout < 0 ? NULL : &tv);
    wsa_assert (rc != SOCKET_ERROR);
#else
    rc = FUNC6 (maxfd, &pollset, NULL, NULL, timeout < 0 ? NULL : &tv);
    FUNC3 (rc >= 0);
#endif
    revents = 0;
    if ((events & NN_IN) && FUNC0 (rcvfd, &pollset))
        revents |= NN_IN;
    if ((events & NN_OUT) && FUNC0 (sndfd, &pollset))
        revents |= NN_OUT;
    return revents;
}
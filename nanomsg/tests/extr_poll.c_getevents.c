
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
typedef int sndfd ;
typedef int rcvfd ;
typedef int fd_set ;
typedef int SOCKET ;


 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int NN_IN ;
 int NN_OUT ;
 int NN_RCVFD ;
 int NN_SNDFD ;
 int NN_SOL_SOCKET ;
 int SOCKET_ERROR ;
 int errno_assert (int) ;
 int nn_assert (int) ;
 int nn_getsockopt (int,int ,int ,char*,size_t*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int wsa_assert (int) ;

int getevents (int s, int events, int timeout)
{
    int rc;
    fd_set pollset;




    int rcvfd;
    int sndfd;
    int maxfd;

    size_t fdsz;
    struct timeval tv;
    int revents;


    maxfd = 0;

    FD_ZERO (&pollset);

    if (events & NN_IN) {
        fdsz = sizeof (rcvfd);
        rc = nn_getsockopt (s, NN_SOL_SOCKET, NN_RCVFD, (char*) &rcvfd, &fdsz);
        errno_assert (rc == 0);
        nn_assert (fdsz == sizeof (rcvfd));
        FD_SET (rcvfd, &pollset);

        if (rcvfd + 1 > maxfd)
            maxfd = rcvfd + 1;

    }

    if (events & NN_OUT) {
        fdsz = sizeof (sndfd);
        rc = nn_getsockopt (s, NN_SOL_SOCKET, NN_SNDFD, (char*) &sndfd, &fdsz);
        errno_assert (rc == 0);
        nn_assert (fdsz == sizeof (sndfd));
        FD_SET (sndfd, &pollset);

        if (sndfd + 1 > maxfd)
            maxfd = sndfd + 1;

    }

    if (timeout >= 0) {
        tv.tv_sec = timeout / 1000;
        tv.tv_usec = (timeout % 1000) * 1000;
    }




    rc = select (maxfd, &pollset, ((void*)0), ((void*)0), timeout < 0 ? ((void*)0) : &tv);
    errno_assert (rc >= 0);

    revents = 0;
    if ((events & NN_IN) && FD_ISSET (rcvfd, &pollset))
        revents |= NN_IN;
    if ((events & NN_OUT) && FD_ISSET (sndfd, &pollset))
        revents |= NN_OUT;
    return revents;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {int fd; int events; int revents; } ;
typedef size_t nfds_t ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int POLLERR ;
 int POLLIN ;
 int POLLOUT ;
 int poll (struct pollfd*,size_t,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;

int polldev(struct pollfd fds[], nfds_t nfds, int timeout) {
    return poll(fds, nfds, timeout);

}

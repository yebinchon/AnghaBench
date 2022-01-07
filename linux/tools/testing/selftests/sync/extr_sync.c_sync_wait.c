
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;


 int POLLERR ;
 int POLLIN ;
 int poll (struct pollfd*,int,int) ;

int sync_wait(int fd, int timeout)
{
 struct pollfd fds;

 fds.fd = fd;
 fds.events = POLLIN | POLLERR;

 return poll(&fds, 1, timeout);
}

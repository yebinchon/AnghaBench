
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,...) ;

__attribute__((used)) static inline int fd_set_blocked(int fd, int blocked)
{
 int flags = fcntl(fd, F_GETFL);

 if (flags < 0) {
  return -1;
 }

 if (blocked) {
  flags &= ~O_NONBLOCK;
 } else {
  flags |= O_NONBLOCK;
 }
 return fcntl(fd, F_SETFL, flags);
}

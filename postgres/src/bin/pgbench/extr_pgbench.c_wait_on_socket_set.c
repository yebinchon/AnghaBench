
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int fds; scalar_t__ maxfd; } ;
typedef TYPE_1__ socket_set ;
typedef int int64 ;


 int select (scalar_t__,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int
wait_on_socket_set(socket_set *sa, int64 usecs)
{
 if (usecs > 0)
 {
  struct timeval timeout;

  timeout.tv_sec = usecs / 1000000;
  timeout.tv_usec = usecs % 1000000;
  return select(sa->maxfd + 1, &sa->fds, ((void*)0), ((void*)0), &timeout);
 }
 else
 {
  return select(sa->maxfd + 1, &sa->fds, ((void*)0), ((void*)0), ((void*)0));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef int php_socket_t ;
struct TYPE_3__ {int events; int revents; int fd; } ;
typedef TYPE_1__ php_pollfd ;


 int php_poll2 (TYPE_1__*,int,int ) ;
 int php_tvtoto (struct timeval*) ;

__attribute__((used)) static inline int php_pollfd_for(php_socket_t fd, int events, struct timeval *timeouttv)
{
 php_pollfd p;
 int n;

 p.fd = fd;
 p.events = events;
 p.revents = 0;

 n = php_poll2(&p, 1, php_tvtoto(timeouttv));

 if (n > 0) {
  return p.revents;
 }

 return n;
}

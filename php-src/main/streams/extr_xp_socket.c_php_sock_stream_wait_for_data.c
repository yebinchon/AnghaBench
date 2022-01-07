
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
typedef int php_stream ;
struct TYPE_3__ {int socket; int timeout_event; struct timeval timeout; } ;
typedef TYPE_1__ php_netstream_data_t ;


 scalar_t__ EINTR ;
 int PHP_POLLREADABLE ;
 int php_pollfd_for (int,int ,struct timeval*) ;
 scalar_t__ php_socket_errno () ;

__attribute__((used)) static void php_sock_stream_wait_for_data(php_stream *stream, php_netstream_data_t *sock)
{
 int retval;
 struct timeval *ptimeout;

 if (!sock || sock->socket == -1) {
  return;
 }

 sock->timeout_event = 0;

 if (sock->timeout.tv_sec == -1)
  ptimeout = ((void*)0);
 else
  ptimeout = &sock->timeout;

 while(1) {
  retval = php_pollfd_for(sock->socket, PHP_POLLREADABLE, ptimeout);

  if (retval == 0)
   sock->timeout_event = 1;

  if (retval >= 0)
   break;

  if (php_socket_errno() != EINTR)
   break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;
struct TYPE_7__ {int socket; } ;
typedef TYPE_2__ php_netstream_data_t ;


 scalar_t__ EINTR ;
 int POLLOUT ;
 int SHUT_RD ;
 void* SOCK_ERR ;
 int closesocket (void*) ;
 int pefree (TYPE_2__*,int ) ;
 int php_pollfd_for_ms (void*,int ,int) ;
 scalar_t__ php_socket_errno () ;
 int php_stream_is_persistent (TYPE_1__*) ;
 int shutdown (void*,int ) ;

__attribute__((used)) static int php_sockop_close(php_stream *stream, int close_handle)
{
 php_netstream_data_t *sock = (php_netstream_data_t*)stream->abstract;




 if (!sock) {
  return 0;
 }

 if (close_handle) {





  if (sock->socket != SOCK_ERR) {
   closesocket(sock->socket);
   sock->socket = SOCK_ERR;
  }

 }

 pefree(sock, php_stream_is_persistent(stream));

 return 0;
}

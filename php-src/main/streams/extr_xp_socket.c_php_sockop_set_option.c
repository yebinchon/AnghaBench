
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef int ssize_t ;
struct TYPE_10__ {int returncode; int addrlen; int addr; int textaddr; } ;
struct TYPE_9__ {int flags; int buflen; int buf; int addrlen; int addr; int backlog; } ;
struct TYPE_11__ {size_t how; TYPE_2__ outputs; int want_addr; int want_textaddr; TYPE_1__ inputs; int op; } ;
typedef TYPE_3__ php_stream_xport_param ;
struct TYPE_12__ {int eof; scalar_t__ abstract; } ;
typedef TYPE_4__ php_stream ;
struct TYPE_13__ {int socket; int is_blocked; int timeout_event; struct timeval timeout; } ;
typedef TYPE_5__ php_netstream_data_t ;
typedef int buf ;


 int EAGAIN ;
 int EMSGSIZE ;
 int EWOULDBLOCK ;
 int E_WARNING ;
 int FG (int ) ;
 int MSG_OOB ;
 int MSG_PEEK ;
 int PHP_POLLREADABLE ;




 int PHP_STREAM_OPTION_RETURN_ERR ;
 int PHP_STREAM_OPTION_RETURN_NOTIMPL ;
 int PHP_STREAM_OPTION_RETURN_OK ;

 int POLLPRI ;



 int STREAM_OOB ;
 int STREAM_PEEK ;






 int SUCCESS ;
 int add_assoc_bool (int *,char*,int) ;
 int default_socket_timeout ;
 int efree (char*) ;
 int listen (int,int ) ;
 int php_error_docref (int *,int ,char*,char*) ;
 int php_network_get_peer_name (int,int *,int *,int *) ;
 int php_network_get_sock_name (int,int *,int *,int *) ;
 int php_pollfd_for (int,int,struct timeval*) ;
 int php_set_sock_blocking (int,int) ;
 int php_socket_errno () ;
 char* php_socket_strerror (int,int *,int ) ;
 int recv (int,char*,int,int) ;
 int shutdown (int,int const) ;
 int sock_recvfrom (TYPE_5__*,int ,int ,int,int *,int *,int *) ;
 int sock_sendto (TYPE_5__*,int ,int ,int,int ,int ) ;

__attribute__((used)) static int php_sockop_set_option(php_stream *stream, int option, int value, void *ptrparam)
{
 int oldmode, flags;
 php_netstream_data_t *sock = (php_netstream_data_t*)stream->abstract;
 php_stream_xport_param *xparam;

 if (!sock) {
  return PHP_STREAM_OPTION_RETURN_NOTIMPL;
 }

 switch(option) {
  case 140:
   {
    struct timeval tv;
    char buf;
    int alive = 1;

    if (value == -1) {
     if (sock->timeout.tv_sec == -1) {
      tv.tv_sec = FG(default_socket_timeout);
      tv.tv_usec = 0;
     } else {
      tv = sock->timeout;
     }
    } else {
     tv.tv_sec = value;
     tv.tv_usec = 0;
    }

    if (sock->socket == -1) {
     alive = 0;
    } else if (php_pollfd_for(sock->socket, PHP_POLLREADABLE|POLLPRI, &tv) > 0) {



     ssize_t ret;

     int err;

     ret = recv(sock->socket, &buf, sizeof(buf), MSG_PEEK);
     err = php_socket_errno();
     if (0 == ret ||
      (0 > ret && err != EWOULDBLOCK && err != EAGAIN && err != EMSGSIZE)) {
      alive = 0;
     }
    }
    return alive ? PHP_STREAM_OPTION_RETURN_OK : PHP_STREAM_OPTION_RETURN_ERR;
   }

  case 141:
   oldmode = sock->is_blocked;
   if (SUCCESS == php_set_sock_blocking(sock->socket, value)) {
    sock->is_blocked = value;
    return oldmode;
   }
   return PHP_STREAM_OPTION_RETURN_ERR;

  case 138:
   sock->timeout = *(struct timeval*)ptrparam;
   sock->timeout_event = 0;
   return PHP_STREAM_OPTION_RETURN_OK;

  case 139:
   add_assoc_bool((zval *)ptrparam, "timed_out", sock->timeout_event);
   add_assoc_bool((zval *)ptrparam, "blocked", sock->is_blocked);
   add_assoc_bool((zval *)ptrparam, "eof", stream->eof);
   return PHP_STREAM_OPTION_RETURN_OK;

  case 137:
   xparam = (php_stream_xport_param *)ptrparam;

   switch (xparam->op) {
    case 131:
     xparam->outputs.returncode = (listen(sock->socket, xparam->inputs.backlog) == 0) ? 0: -1;
     return PHP_STREAM_OPTION_RETURN_OK;

    case 133:
     xparam->outputs.returncode = php_network_get_sock_name(sock->socket,
       xparam->want_textaddr ? &xparam->outputs.textaddr : ((void*)0),
       xparam->want_addr ? &xparam->outputs.addr : ((void*)0),
       xparam->want_addr ? &xparam->outputs.addrlen : ((void*)0)
       );
     return PHP_STREAM_OPTION_RETURN_OK;

    case 132:
     xparam->outputs.returncode = php_network_get_peer_name(sock->socket,
       xparam->want_textaddr ? &xparam->outputs.textaddr : ((void*)0),
       xparam->want_addr ? &xparam->outputs.addr : ((void*)0),
       xparam->want_addr ? &xparam->outputs.addrlen : ((void*)0)
       );
     return PHP_STREAM_OPTION_RETURN_OK;

    case 129:
     flags = 0;
     if ((xparam->inputs.flags & STREAM_OOB) == STREAM_OOB) {
      flags |= MSG_OOB;
     }
     xparam->outputs.returncode = sock_sendto(sock,
       xparam->inputs.buf, xparam->inputs.buflen,
       flags,
       xparam->inputs.addr,
       xparam->inputs.addrlen);
     if (xparam->outputs.returncode == -1) {
      char *err = php_socket_strerror(php_socket_errno(), ((void*)0), 0);
      php_error_docref(((void*)0), E_WARNING,
          "%s\n", err);
      efree(err);
     }
     return PHP_STREAM_OPTION_RETURN_OK;

    case 130:
     flags = 0;
     if ((xparam->inputs.flags & STREAM_OOB) == STREAM_OOB) {
      flags |= MSG_OOB;
     }
     if ((xparam->inputs.flags & STREAM_PEEK) == STREAM_PEEK) {
      flags |= MSG_PEEK;
     }
     xparam->outputs.returncode = sock_recvfrom(sock,
       xparam->inputs.buf, xparam->inputs.buflen,
       flags,
       xparam->want_textaddr ? &xparam->outputs.textaddr : ((void*)0),
       xparam->want_addr ? &xparam->outputs.addr : ((void*)0),
       xparam->want_addr ? &xparam->outputs.addrlen : ((void*)0)
       );
     return PHP_STREAM_OPTION_RETURN_OK;
    default:
     return PHP_STREAM_OPTION_RETURN_NOTIMPL;
   }

  default:
   return PHP_STREAM_OPTION_RETURN_NOTIMPL;
 }
}

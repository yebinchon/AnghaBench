
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;
typedef int php_socket_t ;
struct TYPE_5__ {int socket; } ;
typedef TYPE_2__ php_netstream_data_t ;
typedef int FILE ;


 int FAILURE ;




 int SUCCESS ;
 int * fdopen (int ,int ) ;

__attribute__((used)) static int php_sockop_cast(php_stream *stream, int castas, void **ret)
{
 php_netstream_data_t *sock = (php_netstream_data_t*)stream->abstract;

 if (!sock) {
  return FAILURE;
 }

 switch(castas) {
  case 128:
   if (ret) {
    *(FILE**)ret = fdopen(sock->socket, stream->mode);
    if (*ret)
     return SUCCESS;
    return FAILURE;
   }
   return SUCCESS;
  case 130:
  case 131:
  case 129:
   if (ret)
    *(php_socket_t *)ret = sock->socket;
   return SUCCESS;
  default:
   return FAILURE;
 }
}

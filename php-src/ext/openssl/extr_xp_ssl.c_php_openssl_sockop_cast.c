
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t chunk_size; int readpos; int writepos; int mode; scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;
typedef int php_socket_t ;
struct TYPE_6__ {int socket; } ;
struct TYPE_8__ {TYPE_1__ s; int ssl_active; int ssl_handle; } ;
typedef TYPE_3__ php_openssl_netstream_data_t ;


 int FAILURE ;




 int SSL_pending (int ) ;
 int SUCCESS ;
 void* fdopen (int ,int ) ;
 int php_stream_fill_read_buffer (TYPE_2__*,size_t) ;

__attribute__((used)) static int php_openssl_sockop_cast(php_stream *stream, int castas, void **ret)
{
 php_openssl_netstream_data_t *sslsock = (php_openssl_netstream_data_t*)stream->abstract;

 switch(castas) {
  case 128:
   if (sslsock->ssl_active) {
    return FAILURE;
   }
   if (ret) {
    *ret = fdopen(sslsock->s.socket, stream->mode);
    if (*ret) {
     return SUCCESS;
    }
    return FAILURE;
   }
   return SUCCESS;

  case 130:
   if (ret) {
    size_t pending;
    if (stream->writepos == stream->readpos
     && sslsock->ssl_active
     && (pending = (size_t)SSL_pending(sslsock->ssl_handle)) > 0) {
      php_stream_fill_read_buffer(stream, pending < stream->chunk_size
       ? pending
       : stream->chunk_size);
    }

    *(php_socket_t *)ret = sslsock->s.socket;
   }
   return SUCCESS;

  case 131:
  case 129:
   if (sslsock->ssl_active) {
    return FAILURE;
   }
   if (ret) {
    *(php_socket_t *)ret = sslsock->s.socket;
   }
   return SUCCESS;
  default:
   return FAILURE;
 }
}

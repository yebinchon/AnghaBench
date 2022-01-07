
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ abstract; } ;
typedef TYPE_3__ php_stream ;
struct TYPE_9__ {int socket; } ;
struct TYPE_8__ {TYPE_4__* data; } ;
struct TYPE_11__ {unsigned int sni_cert_count; struct TYPE_11__* reneg; struct TYPE_11__* url_name; struct TYPE_11__* sni_certs; struct TYPE_11__* name; int * ctx; TYPE_2__ s; TYPE_1__ alpn_ctx; int * ssl_handle; scalar_t__ ssl_active; } ;
typedef TYPE_4__ php_openssl_netstream_data_t ;


 scalar_t__ EINTR ;
 int POLLOUT ;
 int SHUT_RD ;
 void* SOCK_ERR ;
 int SSL_CTX_free (int *) ;
 int SSL_free (int *) ;
 int SSL_shutdown (int *) ;
 int closesocket (void*) ;
 int pefree (TYPE_4__*,int ) ;
 int php_pollfd_for_ms (void*,int ,int) ;
 scalar_t__ php_socket_errno () ;
 int php_stream_is_persistent (TYPE_3__*) ;
 int shutdown (void*,int ) ;

__attribute__((used)) static int php_openssl_sockop_close(php_stream *stream, int close_handle)
{
 php_openssl_netstream_data_t *sslsock = (php_openssl_netstream_data_t*)stream->abstract;



 unsigned i;

 if (close_handle) {
  if (sslsock->ssl_active) {
   SSL_shutdown(sslsock->ssl_handle);
   sslsock->ssl_active = 0;
  }
  if (sslsock->ssl_handle) {
   SSL_free(sslsock->ssl_handle);
   sslsock->ssl_handle = ((void*)0);
  }
  if (sslsock->ctx) {
   SSL_CTX_free(sslsock->ctx);
   sslsock->ctx = ((void*)0);
  }
  if (sslsock->s.socket != SOCK_ERR) {
   closesocket(sslsock->s.socket);
   sslsock->s.socket = SOCK_ERR;
  }
 }

 if (sslsock->sni_certs) {
  for (i = 0; i < sslsock->sni_cert_count; i++) {
   if (sslsock->sni_certs[i].ctx) {
    SSL_CTX_free(sslsock->sni_certs[i].ctx);
    pefree(sslsock->sni_certs[i].name, php_stream_is_persistent(stream));
   }
  }
  pefree(sslsock->sni_certs, php_stream_is_persistent(stream));
  sslsock->sni_certs = ((void*)0);
 }

 if (sslsock->url_name) {
  pefree(sslsock->url_name, php_stream_is_persistent(stream));
 }

 if (sslsock->reneg) {
  pefree(sslsock->reneg, php_stream_is_persistent(stream));
 }

 pefree(sslsock, php_stream_is_persistent(stream));

 return 0;
}

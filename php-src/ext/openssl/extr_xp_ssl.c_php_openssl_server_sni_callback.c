
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;
struct TYPE_6__ {unsigned int sni_cert_count; TYPE_1__* sni_certs; } ;
typedef TYPE_3__ php_openssl_netstream_data_t ;
struct TYPE_4__ {int ctx; int name; } ;
typedef int SSL ;


 int SSL_TLSEXT_ERR_NOACK ;
 int SSL_TLSEXT_ERR_OK ;
 scalar_t__ SSL_get_ex_data (int *,int ) ;
 char* SSL_get_servername (int *,int ) ;
 int SSL_set_SSL_CTX (int *,int ) ;
 int TLSEXT_NAMETYPE_host_name ;
 int php_openssl_get_ssl_stream_data_index () ;
 scalar_t__ php_openssl_matches_wildcard_name (char const*,int ) ;

__attribute__((used)) static int php_openssl_server_sni_callback(SSL *ssl_handle, int *al, void *arg)
{
 php_stream *stream;
 php_openssl_netstream_data_t *sslsock;
 unsigned i;
 const char *server_name;

 server_name = SSL_get_servername(ssl_handle, TLSEXT_NAMETYPE_host_name);

 if (!server_name) {
  return SSL_TLSEXT_ERR_NOACK;
 }

 stream = (php_stream*)SSL_get_ex_data(ssl_handle, php_openssl_get_ssl_stream_data_index());
 sslsock = (php_openssl_netstream_data_t*)stream->abstract;

 if (!(sslsock->sni_cert_count && sslsock->sni_certs)) {
  return SSL_TLSEXT_ERR_NOACK;
 }

 for (i=0; i < sslsock->sni_cert_count; i++) {
  if (php_openssl_matches_wildcard_name(server_name, sslsock->sni_certs[i].name)) {
   SSL_set_SSL_CTX(ssl_handle, sslsock->sni_certs[i].ctx);
   return SSL_TLSEXT_ERR_OK;
  }
 }

 return SSL_TLSEXT_ERR_NOACK;
}

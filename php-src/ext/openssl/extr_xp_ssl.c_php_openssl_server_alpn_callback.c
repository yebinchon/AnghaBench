
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
struct TYPE_4__ {TYPE_1__ alpn_ctx; } ;
typedef TYPE_2__ php_openssl_netstream_data_t ;
typedef int SSL ;


 scalar_t__ OPENSSL_NPN_NEGOTIATED ;
 int SSL_TLSEXT_ERR_NOACK ;
 int SSL_TLSEXT_ERR_OK ;
 scalar_t__ SSL_select_next_proto (unsigned char**,unsigned char*,int ,int ,unsigned char const*,unsigned int) ;

__attribute__((used)) static int php_openssl_server_alpn_callback(SSL *ssl_handle,
  const unsigned char **out, unsigned char *outlen,
  const unsigned char *in, unsigned int inlen, void *arg)
{
 php_openssl_netstream_data_t *sslsock = arg;

 if (SSL_select_next_proto((unsigned char **)out, outlen, sslsock->alpn_ctx.data, sslsock->alpn_ctx.len, in, inlen) != OPENSSL_NPN_NEGOTIATED) {
  return SSL_TLSEXT_ERR_NOACK;
 }

 return SSL_TLSEXT_ERR_OK;
}

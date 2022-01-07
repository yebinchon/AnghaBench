
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSL_OP_ALL ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_OP_NO_TLSv1 ;
 int SSL_OP_NO_TLSv1_1 ;
 int SSL_OP_NO_TLSv1_2 ;
 int SSL_OP_NO_TLSv1_3 ;
 int STREAM_CRYPTO_METHOD_SSLv3 ;
 int STREAM_CRYPTO_METHOD_TLSv1_0 ;
 int STREAM_CRYPTO_METHOD_TLSv1_1 ;
 int STREAM_CRYPTO_METHOD_TLSv1_2 ;
 int STREAM_CRYPTO_METHOD_TLSv1_3 ;

__attribute__((used)) static int php_openssl_get_crypto_method_ctx_flags(int method_flags)
{
 int ssl_ctx_options = SSL_OP_ALL;
 return ssl_ctx_options;
}

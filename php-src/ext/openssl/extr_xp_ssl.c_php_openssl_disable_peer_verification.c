
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_stream ;
typedef int SSL_CTX ;


 int SSL_CTX_set_verify (int *,int ,int *) ;
 int SSL_VERIFY_NONE ;

__attribute__((used)) static void php_openssl_disable_peer_verification(SSL_CTX *ctx, php_stream *stream)
{
 SSL_CTX_set_verify(ctx, SSL_VERIFY_NONE, ((void*)0));
}

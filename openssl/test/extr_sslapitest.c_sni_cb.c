
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_AD_INTERNAL_ERROR ;
 int SSL_TLSEXT_ERR_ALERT_FATAL ;
 int SSL_TLSEXT_ERR_OK ;
 int * SSL_set_SSL_CTX (int *,int *) ;
 int snicb ;

__attribute__((used)) static int sni_cb(SSL *s, int *al, void *arg)
{
    SSL_CTX *ctx = (SSL_CTX *)arg;

    if (SSL_set_SSL_CTX(s, ctx) == ((void*)0)) {
        *al = SSL_AD_INTERNAL_ERROR;
        return SSL_TLSEXT_ERR_ALERT_FATAL;
    }
    snicb++;
    return SSL_TLSEXT_ERR_OK;
}

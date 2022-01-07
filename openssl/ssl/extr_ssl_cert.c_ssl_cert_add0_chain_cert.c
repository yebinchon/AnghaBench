
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_14__ {scalar_t__ chain; } ;
struct TYPE_13__ {TYPE_1__* cert; } ;
struct TYPE_12__ {TYPE_2__* cert; } ;
struct TYPE_11__ {TYPE_5__* key; } ;
struct TYPE_10__ {TYPE_5__* key; } ;
typedef TYPE_3__ SSL_CTX ;
typedef TYPE_4__ SSL ;
typedef TYPE_5__ CERT_PKEY ;


 int SSL_F_SSL_CERT_ADD0_CHAIN_CERT ;
 int SSLerr (int ,int) ;
 scalar_t__ sk_X509_new_null () ;
 int sk_X509_push (scalar_t__,int *) ;
 int ssl_security_cert (TYPE_4__*,TYPE_3__*,int *,int ,int ) ;

int ssl_cert_add0_chain_cert(SSL *s, SSL_CTX *ctx, X509 *x)
{
    int r;
    CERT_PKEY *cpk = s ? s->cert->key : ctx->cert->key;
    if (!cpk)
        return 0;
    r = ssl_security_cert(s, ctx, x, 0, 0);
    if (r != 1) {
        SSLerr(SSL_F_SSL_CERT_ADD0_CHAIN_CERT, r);
        return 0;
    }
    if (!cpk->chain)
        cpk->chain = sk_X509_new_null();
    if (!cpk->chain || !sk_X509_push(cpk->chain, x))
        return 0;
    return 1;
}

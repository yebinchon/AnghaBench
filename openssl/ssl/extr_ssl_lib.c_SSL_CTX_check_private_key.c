
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* cert; } ;
struct TYPE_6__ {TYPE_1__* key; } ;
struct TYPE_5__ {int * privatekey; int * x509; } ;
typedef TYPE_3__ SSL_CTX ;


 int SSL_F_SSL_CTX_CHECK_PRIVATE_KEY ;
 int SSL_R_NO_CERTIFICATE_ASSIGNED ;
 int SSL_R_NO_PRIVATE_KEY_ASSIGNED ;
 int SSLerr (int ,int ) ;
 int X509_check_private_key (int *,int *) ;

int SSL_CTX_check_private_key(const SSL_CTX *ctx)
{
    if ((ctx == ((void*)0)) || (ctx->cert->key->x509 == ((void*)0))) {
        SSLerr(SSL_F_SSL_CTX_CHECK_PRIVATE_KEY, SSL_R_NO_CERTIFICATE_ASSIGNED);
        return 0;
    }
    if (ctx->cert->key->privatekey == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_CHECK_PRIVATE_KEY, SSL_R_NO_PRIVATE_KEY_ASSIGNED);
        return 0;
    }
    return X509_check_private_key
            (ctx->cert->key->x509, ctx->cert->key->privatekey);
}


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
typedef TYPE_3__ SSL ;


 int ERR_R_PASSED_NULL_PARAMETER ;
 int SSL_F_SSL_CHECK_PRIVATE_KEY ;
 int SSL_R_NO_CERTIFICATE_ASSIGNED ;
 int SSL_R_NO_PRIVATE_KEY_ASSIGNED ;
 int SSLerr (int ,int ) ;
 int X509_check_private_key (int *,int *) ;

int SSL_check_private_key(const SSL *ssl)
{
    if (ssl == ((void*)0)) {
        SSLerr(SSL_F_SSL_CHECK_PRIVATE_KEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if (ssl->cert->key->x509 == ((void*)0)) {
        SSLerr(SSL_F_SSL_CHECK_PRIVATE_KEY, SSL_R_NO_CERTIFICATE_ASSIGNED);
        return 0;
    }
    if (ssl->cert->key->privatekey == ((void*)0)) {
        SSLerr(SSL_F_SSL_CHECK_PRIVATE_KEY, SSL_R_NO_PRIVATE_KEY_ASSIGNED);
        return 0;
    }
    return X509_check_private_key(ssl->cert->key->x509,
                                   ssl->cert->key->privatekey);
}

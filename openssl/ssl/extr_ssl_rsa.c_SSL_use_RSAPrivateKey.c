
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cert; } ;
typedef TYPE_1__ SSL ;
typedef int RSA ;
typedef int EVP_PKEY ;


 int ERR_R_EVP_LIB ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 scalar_t__ EVP_PKEY_assign_RSA (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int RSA_free (int *) ;
 int RSA_up_ref (int *) ;
 int SSL_F_SSL_USE_RSAPRIVATEKEY ;
 int SSLerr (int ,int ) ;
 int ssl_set_pkey (int ,int *) ;

int SSL_use_RSAPrivateKey(SSL *ssl, RSA *rsa)
{
    EVP_PKEY *pkey;
    int ret;

    if (rsa == ((void*)0)) {
        SSLerr(SSL_F_SSL_USE_RSAPRIVATEKEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if ((pkey = EVP_PKEY_new()) == ((void*)0)) {
        SSLerr(SSL_F_SSL_USE_RSAPRIVATEKEY, ERR_R_EVP_LIB);
        return 0;
    }

    RSA_up_ref(rsa);
    if (EVP_PKEY_assign_RSA(pkey, rsa) <= 0) {
        RSA_free(rsa);
        EVP_PKEY_free(pkey);
        return 0;
    }

    ret = ssl_set_pkey(ssl->cert, pkey);
    EVP_PKEY_free(pkey);
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_5__ {TYPE_1__* pkeys; TYPE_1__* key; } ;
struct TYPE_4__ {int * x509; int * privatekey; } ;
typedef int EVP_PKEY ;
typedef TYPE_2__ CERT ;


 int EC_KEY_can_sign (int ) ;
 int ERR_clear_error () ;
 scalar_t__ EVP_PKEY_RSA ;
 int EVP_PKEY_copy_parameters (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_get0_EC_KEY (int *) ;
 int EVP_PKEY_get0_RSA (int *) ;
 scalar_t__ EVP_PKEY_id (int *) ;
 int RSA_METHOD_FLAG_NO_CHECK ;
 int RSA_flags (int ) ;
 int SSL_F_SSL_SET_CERT ;
 size_t SSL_PKEY_ECC ;
 int SSL_R_ECC_CERT_NOT_FOR_SIGNING ;
 int SSL_R_UNKNOWN_CERTIFICATE_TYPE ;
 int SSL_R_X509_LIB ;
 int SSLerr (int ,int ) ;
 int X509_check_private_key (int *,int *) ;
 int X509_free (int *) ;
 int * X509_get0_pubkey (int *) ;
 int X509_up_ref (int *) ;
 int * ssl_cert_lookup_by_pkey (int *,size_t*) ;

__attribute__((used)) static int ssl_set_cert(CERT *c, X509 *x)
{
    EVP_PKEY *pkey;
    size_t i;

    pkey = X509_get0_pubkey(x);
    if (pkey == ((void*)0)) {
        SSLerr(SSL_F_SSL_SET_CERT, SSL_R_X509_LIB);
        return 0;
    }

    if (ssl_cert_lookup_by_pkey(pkey, &i) == ((void*)0)) {
        SSLerr(SSL_F_SSL_SET_CERT, SSL_R_UNKNOWN_CERTIFICATE_TYPE);
        return 0;
    }

    if (i == SSL_PKEY_ECC && !EC_KEY_can_sign(EVP_PKEY_get0_EC_KEY(pkey))) {
        SSLerr(SSL_F_SSL_SET_CERT, SSL_R_ECC_CERT_NOT_FOR_SIGNING);
        return 0;
    }

    if (c->pkeys[i].privatekey != ((void*)0)) {




        EVP_PKEY_copy_parameters(pkey, c->pkeys[i].privatekey);
        ERR_clear_error();






        if (EVP_PKEY_id(c->pkeys[i].privatekey) == EVP_PKEY_RSA
            && RSA_flags(EVP_PKEY_get0_RSA(c->pkeys[i].privatekey)) &
            RSA_METHOD_FLAG_NO_CHECK) ;
        else

        if (!X509_check_private_key(x, c->pkeys[i].privatekey)) {





            EVP_PKEY_free(c->pkeys[i].privatekey);
            c->pkeys[i].privatekey = ((void*)0);

            ERR_clear_error();
        }
    }

    X509_free(c->pkeys[i].x509);
    X509_up_ref(x);
    c->pkeys[i].x509 = x;
    c->key = &(c->pkeys[i]);

    return 1;
}

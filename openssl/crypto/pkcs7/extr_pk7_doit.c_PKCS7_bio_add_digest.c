
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int EVP_MD ;
typedef int BIO ;


 int BIO_f_md () ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_push (int *,int *) ;
 int BIO_set_md (int *,int const*) ;
 int ERR_R_BIO_LIB ;
 int * EVP_get_digestbyobj (int ) ;
 int PKCS7_F_PKCS7_BIO_ADD_DIGEST ;
 int PKCS7_R_UNKNOWN_DIGEST_TYPE ;
 int PKCS7err (int ,int ) ;

__attribute__((used)) static int PKCS7_bio_add_digest(BIO **pbio, X509_ALGOR *alg)
{
    BIO *btmp;
    const EVP_MD *md;
    if ((btmp = BIO_new(BIO_f_md())) == ((void*)0)) {
        PKCS7err(PKCS7_F_PKCS7_BIO_ADD_DIGEST, ERR_R_BIO_LIB);
        goto err;
    }

    md = EVP_get_digestbyobj(alg->algorithm);
    if (md == ((void*)0)) {
        PKCS7err(PKCS7_F_PKCS7_BIO_ADD_DIGEST, PKCS7_R_UNKNOWN_DIGEST_TYPE);
        goto err;
    }

    BIO_set_md(btmp, md);
    if (*pbio == ((void*)0))
        *pbio = btmp;
    else if (!BIO_push(*pbio, btmp)) {
        PKCS7err(PKCS7_F_PKCS7_BIO_ADD_DIGEST, ERR_R_BIO_LIB);
        goto err;
    }
    btmp = ((void*)0);

    return 1;

 err:
    BIO_free(btmp);
    return 0;

}

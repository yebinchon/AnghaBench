
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_STORE_INFO ;
typedef int OSSL_STORE_CTX ;
typedef int EVP_PKEY ;
typedef int BIO ;


 scalar_t__ OSSL_STORE_INFO_PARAMS ;
 int OSSL_STORE_INFO_free (int *) ;
 int * OSSL_STORE_INFO_get1_PARAMS (int *) ;
 scalar_t__ OSSL_STORE_INFO_get_type (int *) ;
 int OSSL_STORE_eof (int *) ;
 int * OSSL_STORE_load (int *) ;
 int UI_null () ;
 int * ossl_store_attach_pem_bio (int *,int ,int *) ;
 int ossl_store_detach_pem_bio (int *) ;

EVP_PKEY *PEM_read_bio_Parameters(BIO *bp, EVP_PKEY **x)
{
    EVP_PKEY *ret = ((void*)0);
    OSSL_STORE_CTX *ctx = ((void*)0);
    OSSL_STORE_INFO *info = ((void*)0);

    if ((ctx = ossl_store_attach_pem_bio(bp, UI_null(), ((void*)0))) == ((void*)0))
        goto err;

    while (!OSSL_STORE_eof(ctx) && (info = OSSL_STORE_load(ctx)) != ((void*)0)) {
        if (OSSL_STORE_INFO_get_type(info) == OSSL_STORE_INFO_PARAMS) {
            ret = OSSL_STORE_INFO_get1_PARAMS(info);
            break;
        }
        OSSL_STORE_INFO_free(info);
    }

    if (ret != ((void*)0) && x != ((void*)0))
        *x = ret;

 err:
    ossl_store_detach_pem_bio(ctx);
    OSSL_STORE_INFO_free(info);
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int UI_METHOD ;
typedef int OSSL_STORE_INFO ;
typedef int OSSL_STORE_CTX ;
typedef int EVP_PKEY ;
typedef int DH ;
typedef int BIO ;


 scalar_t__ EVP_PKEY_DH ;
 scalar_t__ EVP_PKEY_DHX ;
 int * EVP_PKEY_get1_DH (int *) ;
 scalar_t__ EVP_PKEY_id (int *) ;
 scalar_t__ OSSL_STORE_INFO_PARAMS ;
 int OSSL_STORE_INFO_free (int *) ;
 int * OSSL_STORE_INFO_get0_PARAMS (int *) ;
 scalar_t__ OSSL_STORE_INFO_get_type (int *) ;
 int OSSL_STORE_eof (int *) ;
 int * OSSL_STORE_load (int *) ;
 int * UI_UTIL_wrap_read_pem_callback (int *,int ) ;
 int UI_destroy_method (int *) ;
 int * ossl_store_attach_pem_bio (int *,int *,void*) ;
 int ossl_store_detach_pem_bio (int *) ;

DH *PEM_read_bio_DHparams(BIO *bp, DH **x, pem_password_cb *cb, void *u)
{
    DH *ret = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    OSSL_STORE_CTX *ctx = ((void*)0);
    OSSL_STORE_INFO *info = ((void*)0);
    UI_METHOD *ui_method = ((void*)0);

    if ((ui_method = UI_UTIL_wrap_read_pem_callback(cb, 0)) == ((void*)0))
        return ((void*)0);

    if ((ctx = ossl_store_attach_pem_bio(bp, ui_method, u)) == ((void*)0))
        goto err;

    while (!OSSL_STORE_eof(ctx) && (info = OSSL_STORE_load(ctx)) != ((void*)0)) {
        if (OSSL_STORE_INFO_get_type(info) == OSSL_STORE_INFO_PARAMS) {
            pkey = OSSL_STORE_INFO_get0_PARAMS(info);
            if (EVP_PKEY_id(pkey) == EVP_PKEY_DHX
                || EVP_PKEY_id(pkey) == EVP_PKEY_DH) {
                ret = EVP_PKEY_get1_DH(pkey);
                break;
            }
        }
        OSSL_STORE_INFO_free(info);
    }

    if (ret != ((void*)0) && x != ((void*)0))
        *x = ret;

 err:
    ossl_store_detach_pem_bio(ctx);
    UI_destroy_method(ui_method);
    OSSL_STORE_INFO_free(info);
    return ret;
}

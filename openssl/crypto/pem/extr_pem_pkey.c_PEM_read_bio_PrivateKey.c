
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int UI_METHOD ;
typedef int OSSL_STORE_INFO ;
typedef int OSSL_STORE_CTX ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int OSSL_STORE_C_USE_SECMEM ;
 scalar_t__ OSSL_STORE_INFO_PKEY ;
 int OSSL_STORE_INFO_free (int *) ;
 int * OSSL_STORE_INFO_get1_PKEY (int *) ;
 scalar_t__ OSSL_STORE_INFO_get_type (int *) ;
 int OSSL_STORE_ctrl (int *,int ,int*) ;
 int OSSL_STORE_eof (int *) ;
 int * OSSL_STORE_load (int *) ;
 int * UI_UTIL_wrap_read_pem_callback (int *,int ) ;
 int UI_destroy_method (int *) ;
 int * ossl_store_attach_pem_bio (int *,int *,void*) ;
 int ossl_store_detach_pem_bio (int *) ;

EVP_PKEY *PEM_read_bio_PrivateKey(BIO *bp, EVP_PKEY **x, pem_password_cb *cb,
                                  void *u)
{
    EVP_PKEY *ret = ((void*)0);
    OSSL_STORE_CTX *ctx = ((void*)0);
    OSSL_STORE_INFO *info = ((void*)0);
    UI_METHOD *ui_method = ((void*)0);

    if ((ui_method = UI_UTIL_wrap_read_pem_callback(cb, 0)) == ((void*)0))
        return ((void*)0);

    if ((ctx = ossl_store_attach_pem_bio(bp, ui_method, u)) == ((void*)0))
        goto err;

    {
        int on = 1;
        if (!OSSL_STORE_ctrl(ctx, OSSL_STORE_C_USE_SECMEM, &on))
            goto err;
    }


    while (!OSSL_STORE_eof(ctx) && (info = OSSL_STORE_load(ctx)) != ((void*)0)) {
        if (OSSL_STORE_INFO_get_type(info) == OSSL_STORE_INFO_PKEY) {
            ret = OSSL_STORE_INFO_get1_PKEY(info);
            break;
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

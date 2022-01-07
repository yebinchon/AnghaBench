
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_AES_OCB_CTX ;


 int OPENSSL_clear_free (int *,int) ;
 int aes_generic_ocb_cleanup (int *) ;

__attribute__((used)) static void aes_ocb_freectx(void *vctx)
{
    PROV_AES_OCB_CTX *ctx = (PROV_AES_OCB_CTX *)vctx;

    if (ctx != ((void*)0)) {
        aes_generic_ocb_cleanup(ctx);
        OPENSSL_clear_free(ctx, sizeof(*ctx));
    }
}

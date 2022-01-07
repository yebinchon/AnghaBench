
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmac_data_st {int custom_len; int custom; int key_len; int key; int digest; int ctx; } ;


 int EVP_MD_CTX_free (int ) ;
 int OPENSSL_cleanse (int ,int ) ;
 int OPENSSL_free (struct kmac_data_st*) ;
 int ossl_prov_digest_reset (int *) ;

__attribute__((used)) static void kmac_free(void *vmacctx)
{
    struct kmac_data_st *kctx = vmacctx;

    if (kctx != ((void*)0)) {
        EVP_MD_CTX_free(kctx->ctx);
        ossl_prov_digest_reset(&kctx->digest);
        OPENSSL_cleanse(kctx->key, kctx->key_len);
        OPENSSL_cleanse(kctx->custom, kctx->custom_len);
        OPENSSL_free(kctx);
    }
}

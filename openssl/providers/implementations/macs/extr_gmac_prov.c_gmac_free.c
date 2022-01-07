
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmac_data_st {int cipher; int ctx; } ;


 int EVP_CIPHER_CTX_free (int ) ;
 int OPENSSL_free (struct gmac_data_st*) ;
 int ossl_prov_cipher_reset (int *) ;

__attribute__((used)) static void gmac_free(void *vmacctx)
{
    struct gmac_data_st *macctx = vmacctx;

    if (macctx != ((void*)0)) {
        EVP_CIPHER_CTX_free(macctx->ctx);
        ossl_prov_cipher_reset(&macctx->cipher);
        OPENSSL_free(macctx);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac_data_st {int cipher; int ctx; } ;


 int CMAC_CTX_free (int ) ;
 int OPENSSL_free (struct cmac_data_st*) ;
 int ossl_prov_cipher_reset (int *) ;

__attribute__((used)) static void cmac_free(void *vmacctx)
{
    struct cmac_data_st *macctx = vmacctx;

    if (macctx != ((void*)0)) {
        CMAC_CTX_free(macctx->ctx);
        ossl_prov_cipher_reset(&macctx->cipher);
        OPENSSL_free(macctx);
    }
}

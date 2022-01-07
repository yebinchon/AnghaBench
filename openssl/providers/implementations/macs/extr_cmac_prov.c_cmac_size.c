
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac_data_st {int ctx; } ;


 int CMAC_CTX_get0_cipher_ctx (int ) ;
 size_t EVP_CIPHER_CTX_block_size (int ) ;

__attribute__((used)) static size_t cmac_size(void *vmacctx)
{
    struct cmac_data_st *macctx = vmacctx;

    return EVP_CIPHER_CTX_block_size(CMAC_CTX_get0_cipher_ctx(macctx->ctx));
}

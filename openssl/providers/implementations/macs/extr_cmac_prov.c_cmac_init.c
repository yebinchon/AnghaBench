
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac_data_st {int cipher; int ctx; } ;


 int CMAC_Init (int ,int *,int ,int ,int ) ;
 int ossl_prov_cipher_cipher (int *) ;
 int ossl_prov_cipher_engine (int *) ;
 int ossl_prov_cipher_reset (int *) ;

__attribute__((used)) static int cmac_init(void *vmacctx)
{
    struct cmac_data_st *macctx = vmacctx;
    int rv = CMAC_Init(macctx->ctx, ((void*)0), 0,
                       ossl_prov_cipher_cipher(&macctx->cipher),
                       ossl_prov_cipher_engine(&macctx->cipher));

    ossl_prov_cipher_reset(&macctx->cipher);
    return rv;
}

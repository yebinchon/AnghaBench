
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct cmac_data_st {int cipher; int ctx; int provctx; } ;
struct TYPE_6__ {scalar_t__ data_type; int data_size; int data; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int OPENSSL_CTX ;


 int CMAC_Init (int ,int ,int ,int ,int ) ;
 int OSSL_MAC_PARAM_KEY ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,int ) ;
 int * PROV_LIBRARY_CONTEXT_OF (int ) ;
 int ossl_prov_cipher_cipher (int *) ;
 int ossl_prov_cipher_engine (int *) ;
 int ossl_prov_cipher_load_from_params (int *,TYPE_1__ const*,int *) ;
 int ossl_prov_cipher_reset (int *) ;

__attribute__((used)) static int cmac_set_ctx_params(void *vmacctx, const OSSL_PARAM params[])
{
    struct cmac_data_st *macctx = vmacctx;
    OPENSSL_CTX *ctx = PROV_LIBRARY_CONTEXT_OF(macctx->provctx);
    const OSSL_PARAM *p;

    if (!ossl_prov_cipher_load_from_params(&macctx->cipher, params, ctx))
        return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_KEY)) != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING)
            return 0;

        if (!CMAC_Init(macctx->ctx, p->data, p->data_size,
                       ossl_prov_cipher_cipher(&macctx->cipher),
                       ossl_prov_cipher_engine(&macctx->cipher)))
            return 0;

        ossl_prov_cipher_reset(&macctx->cipher);
    }
    return 1;
}

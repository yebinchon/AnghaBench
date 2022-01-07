
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct hmac_data_st {int digest; int ctx; int provctx; } ;
struct TYPE_7__ {scalar_t__ data_type; int data_size; int data; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int OPENSSL_CTX ;


 int HMAC_CTX_set_flags (int ,int) ;
 int HMAC_Init_ex (int ,int ,int ,int ,int *) ;
 int OSSL_MAC_PARAM_FLAGS ;
 int OSSL_MAC_PARAM_KEY ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 int OSSL_PARAM_get_int (TYPE_1__ const*,int*) ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,int ) ;
 int * PROV_LIBRARY_CONTEXT_OF (int ) ;
 int ossl_prov_digest_load_from_params (int *,TYPE_1__ const*,int *) ;
 int ossl_prov_digest_md (int *) ;
 int ossl_prov_digest_reset (int *) ;

__attribute__((used)) static int hmac_set_ctx_params(void *vmacctx, const OSSL_PARAM params[])
{
    struct hmac_data_st *macctx = vmacctx;
    OPENSSL_CTX *ctx = PROV_LIBRARY_CONTEXT_OF(macctx->provctx);
    const OSSL_PARAM *p;

    if (!ossl_prov_digest_load_from_params(&macctx->digest, params, ctx))
        return 0;


    if ((p = OSSL_PARAM_locate_const(params,
                                     OSSL_MAC_PARAM_FLAGS)) != ((void*)0)) {
        int flags = 0;

        if (!OSSL_PARAM_get_int(p, &flags))
            return 0;
        HMAC_CTX_set_flags(macctx->ctx, flags);
    }
    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_KEY)) != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING)
            return 0;

        if (!HMAC_Init_ex(macctx->ctx, p->data, p->data_size,
                          ossl_prov_digest_md(&macctx->digest),
                          ((void*)0) ))
            return 0;

        ossl_prov_digest_reset(&macctx->digest);
    }
    return 1;
}

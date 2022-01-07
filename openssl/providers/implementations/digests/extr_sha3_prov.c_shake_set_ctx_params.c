
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int md_size; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ KECCAK1600_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_DIGEST_PARAM_XOFLEN ;
 int OSSL_PARAM_get_size_t (int const*,int *) ;
 int * OSSL_PARAM_locate_const (int const*,int ) ;
 int PROV_R_FAILED_TO_GET_PARAMETER ;

__attribute__((used)) static int shake_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    KECCAK1600_CTX *ctx = (KECCAK1600_CTX *)vctx;

    if (ctx != ((void*)0) && params != ((void*)0)) {
        p = OSSL_PARAM_locate_const(params, OSSL_DIGEST_PARAM_XOFLEN);
        if (p != ((void*)0) && !OSSL_PARAM_get_size_t(p, &ctx->md_size)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        return 1;
    }
    return 0;
}

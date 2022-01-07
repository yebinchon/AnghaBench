
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pad; } ;
typedef TYPE_1__ PROV_DH_CTX ;
typedef int OSSL_PARAM ;


 int OSSL_EXCHANGE_PARAM_PAD ;
 int OSSL_PARAM_get_uint (int const*,unsigned int*) ;
 int * OSSL_PARAM_locate_const (int const*,int ) ;

__attribute__((used)) static int dh_set_ctx_params(void *vpdhctx, const OSSL_PARAM params[])
{
    PROV_DH_CTX *pdhctx = (PROV_DH_CTX *)vpdhctx;
    const OSSL_PARAM *p;
    unsigned int pad;

    if (pdhctx == ((void*)0) || params == ((void*)0))
        return 0;

    p = OSSL_PARAM_locate_const(params, OSSL_EXCHANGE_PARAM_PAD);
    if (p == ((void*)0) || !OSSL_PARAM_get_uint(p, &pad))
        return 0;
    pdhctx->pad = pad ? 1 : 0;
    return 1;
}

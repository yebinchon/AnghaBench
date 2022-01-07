
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* data; } ;
struct TYPE_8__ {int * pss; } ;
struct TYPE_7__ {int saltlen; int * mgf1md; int * md; } ;
typedef TYPE_1__ RSA_PKEY_CTX ;
typedef TYPE_2__ RSA ;
typedef TYPE_3__ EVP_PKEY_CTX ;


 int pkey_ctx_is_pss (TYPE_3__*) ;
 int * rsa_pss_params_create (int *,int *,int) ;

__attribute__((used)) static int rsa_set_pss_param(RSA *rsa, EVP_PKEY_CTX *ctx)
{
    RSA_PKEY_CTX *rctx = ctx->data;

    if (!pkey_ctx_is_pss(ctx))
        return 1;

    if (rctx->md == ((void*)0) && rctx->mgf1md == ((void*)0) && rctx->saltlen == -2)
        return 1;
    rsa->pss = rsa_pss_params_create(rctx->md, rctx->mgf1md,
                                     rctx->saltlen == -2 ? 0 : rctx->saltlen);
    if (rsa->pss == ((void*)0))
        return 0;
    return 1;
}

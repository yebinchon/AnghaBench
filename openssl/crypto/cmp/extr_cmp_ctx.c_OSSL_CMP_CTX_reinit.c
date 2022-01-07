
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int status; int failInfoCode; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;
 scalar_t__ OSSL_CMP_CTX_set1_senderNonce (TYPE_1__*,int *) ;
 scalar_t__ OSSL_CMP_CTX_set1_transactionID (TYPE_1__*,int *) ;
 scalar_t__ ossl_cmp_ctx_set0_newCert (TYPE_1__*,int *) ;
 scalar_t__ ossl_cmp_ctx_set0_statusString (TYPE_1__*,int *) ;
 scalar_t__ ossl_cmp_ctx_set0_validatedSrvCert (TYPE_1__*,int *) ;
 scalar_t__ ossl_cmp_ctx_set1_caPubs (TYPE_1__*,int *) ;
 scalar_t__ ossl_cmp_ctx_set1_extraCertsIn (TYPE_1__*,int *) ;
 scalar_t__ ossl_cmp_ctx_set1_recipNonce (TYPE_1__*,int *) ;

int OSSL_CMP_CTX_reinit(OSSL_CMP_CTX *ctx)
{
    if (ctx == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }

    ctx->status = -1;
    ctx->failInfoCode = -1;

    return ossl_cmp_ctx_set0_statusString(ctx, ((void*)0))
        && ossl_cmp_ctx_set0_newCert(ctx, ((void*)0))
        && ossl_cmp_ctx_set1_caPubs(ctx, ((void*)0))
        && ossl_cmp_ctx_set1_extraCertsIn(ctx, ((void*)0))
        && ossl_cmp_ctx_set0_validatedSrvCert(ctx, ((void*)0))
        && OSSL_CMP_CTX_set1_transactionID(ctx, ((void*)0))
        && OSSL_CMP_CTX_set1_senderNonce(ctx, ((void*)0))
        && ossl_cmp_ctx_set1_recipNonce(ctx, ((void*)0));
}

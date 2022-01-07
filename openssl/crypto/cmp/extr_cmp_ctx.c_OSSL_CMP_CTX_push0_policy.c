
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * policies; } ;
typedef int POLICYINFO ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int * CERTIFICATEPOLICIES_new () ;
 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;
 int sk_POLICYINFO_push (int *,int *) ;

int OSSL_CMP_CTX_push0_policy(OSSL_CMP_CTX *ctx, POLICYINFO *pinfo)
{
    if (ctx == ((void*)0) || pinfo == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }

    if (ctx->policies == ((void*)0)
            && (ctx->policies = CERTIFICATEPOLICIES_new()) == ((void*)0))
        return 0;

    return sk_POLICYINFO_push(ctx->policies, pinfo);
}

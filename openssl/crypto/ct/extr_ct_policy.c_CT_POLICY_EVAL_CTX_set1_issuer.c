
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int * issuer; } ;
typedef TYPE_1__ CT_POLICY_EVAL_CTX ;


 int X509_up_ref (int *) ;

int CT_POLICY_EVAL_CTX_set1_issuer(CT_POLICY_EVAL_CTX *ctx, X509 *issuer)
{
    if (!X509_up_ref(issuer))
        return 0;
    ctx->issuer = issuer;
    return 1;
}

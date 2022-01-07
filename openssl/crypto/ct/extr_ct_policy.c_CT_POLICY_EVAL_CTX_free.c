
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int issuer; int cert; } ;
typedef TYPE_1__ CT_POLICY_EVAL_CTX ;


 int OPENSSL_free (TYPE_1__*) ;
 int X509_free (int ) ;

void CT_POLICY_EVAL_CTX_free(CT_POLICY_EVAL_CTX *ctx)
{
    if (ctx == ((void*)0))
        return;
    X509_free(ctx->cert);
    X509_free(ctx->issuer);
    OPENSSL_free(ctx);
}

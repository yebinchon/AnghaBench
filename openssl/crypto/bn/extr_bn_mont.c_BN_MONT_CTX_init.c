
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; scalar_t__* n0; int Ni; int N; int RR; scalar_t__ ri; } ;
typedef TYPE_1__ BN_MONT_CTX ;


 int bn_init (int *) ;

void BN_MONT_CTX_init(BN_MONT_CTX *ctx)
{
    ctx->ri = 0;
    bn_init(&ctx->RR);
    bn_init(&ctx->N);
    bn_init(&ctx->Ni);
    ctx->n0[0] = ctx->n0[1] = 0;
    ctx->flags = 0;
}

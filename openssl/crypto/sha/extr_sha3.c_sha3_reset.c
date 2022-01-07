
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bufsz; int A; } ;
typedef TYPE_1__ KECCAK1600_CTX ;


 int memset (int ,int ,int) ;

void sha3_reset(KECCAK1600_CTX *ctx)
{
    memset(ctx->A, 0, sizeof(ctx->A));
    ctx->bufsz = 0;
}

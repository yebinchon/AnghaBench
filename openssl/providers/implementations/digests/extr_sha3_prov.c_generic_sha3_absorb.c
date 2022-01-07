
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_size; int A; } ;
typedef TYPE_1__ KECCAK1600_CTX ;


 size_t SHA3_absorb (int ,void const*,size_t,int ) ;

__attribute__((used)) static size_t generic_sha3_absorb(void *vctx, const void *inp, size_t len)
{
    KECCAK1600_CTX *ctx = vctx;

    return SHA3_absorb(ctx->A, inp, len, ctx->block_size);
}

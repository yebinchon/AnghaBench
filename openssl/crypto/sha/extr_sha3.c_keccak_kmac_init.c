
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int md_size; } ;
typedef TYPE_1__ KECCAK1600_CTX ;


 int sha3_init (TYPE_1__*,unsigned char,size_t) ;

int keccak_kmac_init(KECCAK1600_CTX *ctx, unsigned char pad, size_t bitlen)
{
    int ret = sha3_init(ctx, pad, bitlen);

    if (ret)
        ctx->md_size *= 2;
    return ret;
}

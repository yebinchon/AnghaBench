
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t block_size; size_t bufsz; scalar_t__ md_size; int* buf; int pad; int A; } ;
typedef TYPE_1__ KECCAK1600_CTX ;


 int SHA3_absorb (int ,int*,size_t,size_t) ;
 int SHA3_squeeze (int ,unsigned char*,scalar_t__,size_t) ;
 int memset (int*,int ,size_t) ;

int sha3_final(unsigned char *md, KECCAK1600_CTX *ctx)
{
    size_t bsz = ctx->block_size;
    size_t num = ctx->bufsz;

    if (ctx->md_size == 0)
        return 1;






    memset(ctx->buf + num, 0, bsz - num);
    ctx->buf[num] = ctx->pad;
    ctx->buf[bsz - 1] |= 0x80;

    (void)SHA3_absorb(ctx->A, ctx->buf, bsz, bsz);

    SHA3_squeeze(ctx->A, md, ctx->md_size, bsz);

    return 1;
}

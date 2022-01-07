
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t block_size; size_t bufsz; unsigned char const* buf; int A; } ;
typedef TYPE_1__ KECCAK1600_CTX ;


 size_t SHA3_absorb (int ,unsigned char const*,size_t,size_t) ;
 int memcpy (unsigned char const*,unsigned char const*,size_t) ;

int sha3_update(KECCAK1600_CTX *ctx, const void *_inp, size_t len)
{
    const unsigned char *inp = _inp;
    size_t bsz = ctx->block_size;
    size_t num, rem;

    if (len == 0)
        return 1;

    if ((num = ctx->bufsz) != 0) {
        rem = bsz - num;

        if (len < rem) {
            memcpy(ctx->buf + num, inp, len);
            ctx->bufsz += len;
            return 1;
        }





        memcpy(ctx->buf + num, inp, rem);
        inp += rem, len -= rem;
        (void)SHA3_absorb(ctx->A, ctx->buf, bsz, bsz);
        ctx->bufsz = 0;

    }

    if (len >= bsz)
        rem = SHA3_absorb(ctx->A, inp, len, bsz);
    else
        rem = len;

    if (rem) {
        memcpy(ctx->buf, inp + len - rem, rem);
        ctx->bufsz = rem;
    }

    return 1;
}

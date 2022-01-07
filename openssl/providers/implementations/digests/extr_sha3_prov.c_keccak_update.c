
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t (* absorb ) (TYPE_2__*,unsigned char const*,size_t const) ;} ;
struct TYPE_6__ {size_t block_size; size_t bufsz; unsigned char const* buf; TYPE_1__ meth; } ;
typedef TYPE_2__ KECCAK1600_CTX ;


 int memcpy (unsigned char const*,unsigned char const*,size_t) ;
 size_t stub1 (TYPE_2__*,unsigned char const*,size_t const) ;
 size_t stub2 (TYPE_2__*,unsigned char const*,size_t) ;

__attribute__((used)) static int keccak_update(void *vctx, const unsigned char *inp, size_t len)
{
    KECCAK1600_CTX *ctx = vctx;
    const size_t bsz = ctx->block_size;
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

        inp += rem;
        len -= rem;
        ctx->meth.absorb(ctx, ctx->buf, bsz);
        ctx->bufsz = 0;
    }

    rem = ctx->meth.absorb(ctx, inp, len);

    if (rem) {
        memcpy(ctx->buf, inp + len - rem, rem);
        ctx->bufsz = rem;
    }
    return 1;
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t block_size; size_t bufsz; unsigned char const* buf; int /*<<< orphan*/  A; } ;
typedef  TYPE_1__ KECCAK1600_CTX ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,unsigned char const*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,size_t) ; 

int FUNC2(KECCAK1600_CTX *ctx, const void *_inp, size_t len)
{
    const unsigned char *inp = _inp;
    size_t bsz = ctx->block_size;
    size_t num, rem;

    if (len == 0)
        return 1;

    if ((num = ctx->bufsz) != 0) {      /* process intermediate buffer? */
        rem = bsz - num;

        if (len < rem) {
            FUNC1(ctx->buf + num, inp, len);
            ctx->bufsz += len;
            return 1;
        }
        /*
         * We have enough data to fill or overflow the intermediate
         * buffer. So we append |rem| bytes and process the block,
         * leaving the rest for later processing...
         */
        FUNC1(ctx->buf + num, inp, rem);
        inp += rem, len -= rem;
        (void)FUNC0(ctx->A, ctx->buf, bsz, bsz);
        ctx->bufsz = 0;
        /* ctx->buf is processed, ctx->num is guaranteed to be zero */
    }

    if (len >= bsz)
        rem = FUNC0(ctx->A, inp, len, bsz);
    else
        rem = len;

    if (rem) {
        FUNC1(ctx->buf, inp + len - rem, rem);
        ctx->bufsz = rem;
    }

    return 1;
}
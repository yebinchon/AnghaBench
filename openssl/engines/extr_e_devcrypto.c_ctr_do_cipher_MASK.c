#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cipher_ctx {size_t num; int* partial; int blocksize; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC3(EVP_CIPHER_CTX *ctx, unsigned char *out,
                         const unsigned char *in, size_t inl)
{
    struct cipher_ctx *cipher_ctx =
        (struct cipher_ctx *)FUNC0(ctx);
    size_t nblocks, len;

    /* initial partial block */
    while (cipher_ctx->num && inl) {
        (*out++) = *(in++) ^ cipher_ctx->partial[cipher_ctx->num];
        --inl;
        cipher_ctx->num = (cipher_ctx->num + 1) % cipher_ctx->blocksize;
    }

    /* full blocks */
    if (inl > (unsigned int) cipher_ctx->blocksize) {
        nblocks = inl/cipher_ctx->blocksize;
        len = nblocks * cipher_ctx->blocksize;
        if (FUNC1(ctx, out, in, len) < 1)
            return 0;
        inl -= len;
        out += len;
        in += len;
    }

    /* final partial block */
    if (inl) {
        FUNC2(cipher_ctx->partial, 0, cipher_ctx->blocksize);
        if (FUNC1(ctx, cipher_ctx->partial, cipher_ctx->partial,
            cipher_ctx->blocksize) < 1)
            return 0;
        while (inl--) {
            out[cipher_ctx->num] = in[cipher_ctx->num]
                                   ^ cipher_ctx->partial[cipher_ctx->num];
            cipher_ctx->num++;
        }
    }

    return 1;
}
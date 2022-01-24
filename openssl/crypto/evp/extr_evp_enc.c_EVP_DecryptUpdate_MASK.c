#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flags; int final_used; unsigned char* final; int /*<<< orphan*/  buf_len; TYPE_1__* cipher; int /*<<< orphan*/  provctx; scalar_t__ encrypt; } ;
struct TYPE_8__ {int (* cupdate ) (int /*<<< orphan*/ ,unsigned char*,size_t*,int,unsigned char const*,size_t) ;unsigned int block_size; int flags; int (* do_cipher ) (TYPE_2__*,unsigned char*,unsigned char const*,int) ;int /*<<< orphan*/ * prov; } ;
typedef  scalar_t__ PTRDIFF_T ;
typedef  TYPE_2__ EVP_CIPHER_CTX ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int EVP_CIPH_FLAG_CUSTOM_CIPHER ; 
 int /*<<< orphan*/  EVP_CIPH_FLAG_LENGTH_BITS ; 
 int EVP_CIPH_NO_PADDING ; 
 int /*<<< orphan*/  EVP_F_EVP_DECRYPTUPDATE ; 
 int /*<<< orphan*/  EVP_R_INVALID_OPERATION ; 
 int /*<<< orphan*/  EVP_R_NO_CIPHER_SET ; 
 int /*<<< orphan*/  EVP_R_PARTIALLY_OVERLAPPING ; 
 int /*<<< orphan*/  EVP_R_UPDATE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_2__*,unsigned char*,int*,unsigned char const*,int) ; 
 scalar_t__ FUNC5 (unsigned char*,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned char*,size_t*,int,unsigned char const*,size_t) ; 
 int FUNC8 (TYPE_2__*,unsigned char*,unsigned char const*,int) ; 

int FUNC9(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl,
                      const unsigned char *in, int inl)
{
    int fix_len, cmpl = inl, ret;
    unsigned int b;
    size_t soutl;
    int blocksize;

    /* Prevent accidental use of encryption context when decrypting */
    if (ctx->encrypt) {
        FUNC2(EVP_F_EVP_DECRYPTUPDATE, EVP_R_INVALID_OPERATION);
        return 0;
    }

    if (ctx->cipher == NULL) {
        FUNC2(EVP_F_EVP_DECRYPTUPDATE, EVP_R_NO_CIPHER_SET);
        return 0;
    }
    if (ctx->cipher->prov == NULL)
        goto legacy;

    blocksize = FUNC0(ctx);

    if (ctx->cipher->cupdate == NULL || blocksize < 1) {
        FUNC2(EVP_F_EVP_DECRYPTUPDATE, EVP_R_UPDATE_ERROR);
        return 0;
    }
    ret = ctx->cipher->cupdate(ctx->provctx, out, &soutl,
                               inl + (blocksize == 1 ? 0 : blocksize), in,
                               (size_t)inl);

    if (ret) {
        if (soutl > INT_MAX) {
            FUNC2(EVP_F_EVP_DECRYPTUPDATE, EVP_R_UPDATE_ERROR);
            return 0;
        }
        *outl = soutl;
    }

    return ret;

    /* TODO(3.0): Remove legacy code below */
 legacy:

    b = ctx->cipher->block_size;

    if (FUNC1(ctx, EVP_CIPH_FLAG_LENGTH_BITS))
        cmpl = (cmpl + 7) / 8;

    if (ctx->cipher->flags & EVP_CIPH_FLAG_CUSTOM_CIPHER) {
        if (b == 1 && FUNC5(out, in, cmpl)) {
            FUNC2(EVP_F_EVP_DECRYPTUPDATE, EVP_R_PARTIALLY_OVERLAPPING);
            return 0;
        }

        fix_len = ctx->cipher->do_cipher(ctx, out, in, inl);
        if (fix_len < 0) {
            *outl = 0;
            return 0;
        } else
            *outl = fix_len;
        return 1;
    }

    if (inl <= 0) {
        *outl = 0;
        return inl == 0;
    }

    if (ctx->flags & EVP_CIPH_NO_PADDING)
        return FUNC4(ctx, out, outl, in, inl);

    FUNC3(b <= sizeof(ctx->final));

    if (ctx->final_used) {
        /* see comment about PTRDIFF_T comparison above */
        if (((PTRDIFF_T)out == (PTRDIFF_T)in)
            || FUNC5(out, in, b)) {
            FUNC2(EVP_F_EVP_DECRYPTUPDATE, EVP_R_PARTIALLY_OVERLAPPING);
            return 0;
        }
        FUNC6(out, ctx->final, b);
        out += b;
        fix_len = 1;
    } else
        fix_len = 0;

    if (!FUNC4(ctx, out, outl, in, inl))
        return 0;

    /*
     * if we have 'decrypted' a multiple of block size, make sure we have a
     * copy of this last block
     */
    if (b > 1 && !ctx->buf_len) {
        *outl -= b;
        ctx->final_used = 1;
        FUNC6(ctx->final, &out[*outl], b);
    } else
        ctx->final_used = 0;

    if (fix_len)
        *outl += b;

    return 1;
}
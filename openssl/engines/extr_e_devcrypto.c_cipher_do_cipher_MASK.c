#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char uint8_t ;
struct crypt_op {size_t len; scalar_t__ flags; int /*<<< orphan*/  op; void* iv; void* dst; void* src; int /*<<< orphan*/  ses; } ;
struct TYPE_2__ {int /*<<< orphan*/  ses; } ;
struct cipher_ctx {int mode; size_t blocksize; int /*<<< orphan*/  op; TYPE_1__ sess; } ;
typedef  int /*<<< orphan*/  cryp ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CIOCCRYPT ; 
 scalar_t__ COP_FLAG_WRITE_IV ; 
 int /*<<< orphan*/  ERR_LIB_SYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *) ; 
#define  EVP_CIPH_CBC_MODE 129 
#define  EVP_CIPH_CTR_MODE 128 
 int EVP_MAX_IV_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  cfd ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct crypt_op*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct crypt_op*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(EVP_CIPHER_CTX *ctx, unsigned char *out,
                            const unsigned char *in, size_t inl)
{
    struct cipher_ctx *cipher_ctx =
        (struct cipher_ctx *)FUNC2(ctx);
    struct crypt_op cryp;
    unsigned char *iv = FUNC4(ctx);
#if !defined(COP_FLAG_WRITE_IV)
    unsigned char saved_iv[EVP_MAX_IV_LENGTH];
    const unsigned char *ivptr;
    size_t nblocks, ivlen;
#endif

    FUNC8(&cryp, 0, sizeof(cryp));
    cryp.ses = cipher_ctx->sess.ses;
    cryp.len = inl;
    cryp.src = (void *)in;
    cryp.dst = (void *)out;
    cryp.iv = (void *)iv;
    cryp.op = cipher_ctx->op;
#if !defined(COP_FLAG_WRITE_IV)
    cryp.flags = 0;

    ivlen = FUNC3(ctx);
    if (ivlen > 0)
        switch (cipher_ctx->mode) {
        case EVP_CIPH_CBC_MODE:
            FUNC5(inl >= ivlen);
            if (!FUNC1(ctx)) {
                ivptr = in + inl - ivlen;
                FUNC7(saved_iv, ivptr, ivlen);
            }
            break;

        case EVP_CIPH_CTR_MODE:
            break;

        default: /* should not happen */
            return 0;
        }
#else
    cryp.flags = COP_FLAG_WRITE_IV;
#endif

    if (FUNC6(cfd, CIOCCRYPT, &cryp) < 0) {
        FUNC0(ERR_LIB_SYS, errno, "calling ioctl()");
        return 0;
    }

#if !defined(COP_FLAG_WRITE_IV)
    if (ivlen > 0)
        switch (cipher_ctx->mode) {
        case EVP_CIPH_CBC_MODE:
            FUNC5(inl >= ivlen);
            if (FUNC1(ctx))
                ivptr = out + inl - ivlen;
            else
                ivptr = saved_iv;

            FUNC7(iv, ivptr, ivlen);
            break;

        case EVP_CIPH_CTR_MODE:
            nblocks = (inl + cipher_ctx->blocksize - 1)
                      / cipher_ctx->blocksize;
            do {
                ivlen--;
                nblocks += iv[ivlen];
                iv[ivlen] = (uint8_t) nblocks;
                nblocks >>= 8;
            } while (ivlen);
            break;

        default: /* should not happen */
            return 0;
        }
#endif

    return 1;
}
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
typedef  int /*<<< orphan*/  pad ;
struct TYPE_3__ {int* key; int key_length; int /*<<< orphan*/  i_ctx; int /*<<< orphan*/  md_ctx; int /*<<< orphan*/  o_ctx; int /*<<< orphan*/  const* md; } ;
typedef  TYPE_1__ HMAC_CTX ;
typedef  int /*<<< orphan*/  const EVP_MD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EVP_MD_FLAG_XOF ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int HMAC_MAX_MD_CBLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,void const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(HMAC_CTX *ctx, const void *key, int len,
                 const EVP_MD *md, ENGINE *impl)
{
    int rv = 0;
    int i, j, reset = 0;
    unsigned char pad[HMAC_MAX_MD_CBLOCK_SIZE];

    /* If we are changing MD then we must have a key */
    if (md != NULL && md != ctx->md && (key == NULL || len < 0))
        return 0;

    if (md != NULL) {
        reset = 1;
        ctx->md = md;
    } else if (ctx->md) {
        md = ctx->md;
    } else {
        return 0;
    }

    /*
     * The HMAC construction is not allowed to be used with the
     * extendable-output functions (XOF) shake128 and shake256.
     */
    if ((FUNC5(md) & EVP_MD_FLAG_XOF) != 0)
        return 0;

    if (key != NULL) {
        reset = 1;
        j = FUNC4(md);
        if (!FUNC9(j <= (int)sizeof(ctx->key)))
            return 0;
        if (j < len) {
            if (!FUNC1(ctx->md_ctx, md, impl)
                    || !FUNC2(ctx->md_ctx, key, len)
                    || !FUNC0(ctx->md_ctx, ctx->key,
                                           &ctx->key_length))
                return 0;
        } else {
            if (len < 0 || len > (int)sizeof(ctx->key))
                return 0;
            FUNC7(ctx->key, key, len);
            ctx->key_length = len;
        }
        if (ctx->key_length != HMAC_MAX_MD_CBLOCK_SIZE)
            FUNC8(&ctx->key[ctx->key_length], 0,
                   HMAC_MAX_MD_CBLOCK_SIZE - ctx->key_length);
    }

    if (reset) {
        for (i = 0; i < HMAC_MAX_MD_CBLOCK_SIZE; i++)
            pad[i] = 0x36 ^ ctx->key[i];
        if (!FUNC1(ctx->i_ctx, md, impl)
                || !FUNC2(ctx->i_ctx, pad, FUNC4(md)))
            goto err;

        for (i = 0; i < HMAC_MAX_MD_CBLOCK_SIZE; i++)
            pad[i] = 0x5c ^ ctx->key[i];
        if (!FUNC1(ctx->o_ctx, md, impl)
                || !FUNC2(ctx->o_ctx, pad, FUNC4(md)))
            goto err;
    }
    if (!FUNC3(ctx->md_ctx, ctx->i_ctx))
        goto err;
    rv = 1;
 err:
    if (reset)
        FUNC6(pad, sizeof(pad));
    return rv;
}
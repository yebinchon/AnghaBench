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
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_MAC_CTX ;
typedef  int /*<<< orphan*/  Ai ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_KEY ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC11(EVP_MAC_CTX *ctx_init,
                           const unsigned char *sec, size_t sec_len,
                           const unsigned char *seed, size_t seed_len,
                           unsigned char *out, size_t olen)
{
    size_t chunk;
    EVP_MAC_CTX *ctx = NULL, *ctx_Ai = NULL;
    unsigned char Ai[EVP_MAX_MD_SIZE];
    size_t Ai_len;
    int ret = 0;
    OSSL_PARAM params[2], *p = params;

    *p++ = FUNC9(OSSL_MAC_PARAM_KEY,
                                             (void *)sec, sec_len);
    *p = FUNC8();
    if (!FUNC2(ctx_init, params))
        goto err;
    if (!FUNC4(ctx_init))
        goto err;
    chunk = FUNC5(ctx_init);
    if (chunk == 0)
        goto err;
    /* A(0) = seed */
    ctx_Ai = FUNC0(ctx_init);
    if (ctx_Ai == NULL)
        goto err;
    if (seed != NULL && !FUNC6(ctx_Ai, seed, seed_len))
        goto err;

    for (;;) {
        /* calc: A(i) = HMAC_<hash>(secret, A(i-1)) */
        if (!FUNC3(ctx_Ai, Ai, &Ai_len, sizeof(Ai)))
            goto err;
        FUNC1(ctx_Ai);
        ctx_Ai = NULL;

        /* calc next chunk: HMAC_<hash>(secret, A(i) + seed) */
        ctx = FUNC0(ctx_init);
        if (ctx == NULL)
            goto err;
        if (!FUNC6(ctx, Ai, Ai_len))
            goto err;
        /* save state for calculating next A(i) value */
        if (olen > chunk) {
            ctx_Ai = FUNC0(ctx);
            if (ctx_Ai == NULL)
                goto err;
        }
        if (seed != NULL && !FUNC6(ctx, seed, seed_len))
            goto err;
        if (olen <= chunk) {
            /* last chunk - use Ai as temp bounce buffer */
            if (!FUNC3(ctx, Ai, &Ai_len, sizeof(Ai)))
                goto err;
            FUNC10(out, Ai, olen);
            break;
        }
        if (!FUNC3(ctx, out, NULL, olen))
            goto err;
        FUNC1(ctx);
        ctx = NULL;
        out += chunk;
        olen -= chunk;
    }
    ret = 1;
 err:
    FUNC1(ctx);
    FUNC1(ctx_Ai);
    FUNC7(Ai, sizeof(Ai));
    return ret;
}
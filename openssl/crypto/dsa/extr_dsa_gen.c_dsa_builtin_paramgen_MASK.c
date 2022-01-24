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
struct TYPE_3__ {int /*<<< orphan*/ * g; int /*<<< orphan*/ * q; int /*<<< orphan*/ * p; int /*<<< orphan*/  dirty_cnt; } ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_1__ DSA ;
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DSA_F_DSA_BUILTIN_PARAMGEN ; 
 int /*<<< orphan*/  DSA_R_SEED_LEN_SMALL ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (unsigned char*,int,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC30 () ; 
 int /*<<< orphan*/ * FUNC31 () ; 
 int /*<<< orphan*/ * FUNC32 () ; 
 scalar_t__ FUNC33 (unsigned char*,int) ; 
 int SHA224_DIGEST_LENGTH ; 
 int SHA256_DIGEST_LENGTH ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC34 (unsigned char*,unsigned char const*,int) ; 

int FUNC35(DSA *ret, size_t bits, size_t qbits,
                         const EVP_MD *evpmd, const unsigned char *seed_in,
                         size_t seed_len, unsigned char *seed_out,
                         int *counter_ret, unsigned long *h_ret, BN_GENCB *cb)
{
    int ok = 0;
    unsigned char seed[SHA256_DIGEST_LENGTH];
    unsigned char md[SHA256_DIGEST_LENGTH];
    unsigned char buf[SHA256_DIGEST_LENGTH], buf2[SHA256_DIGEST_LENGTH];
    BIGNUM *r0, *W, *X, *c, *test;
    BIGNUM *g = NULL, *q = NULL, *p = NULL;
    BN_MONT_CTX *mont = NULL;
    int i, k, n = 0, m = 0, qsize = qbits >> 3;
    int counter = 0;
    int r = 0;
    BN_CTX *ctx = NULL;
    unsigned int h = 2;

    if (qsize != SHA_DIGEST_LENGTH && qsize != SHA224_DIGEST_LENGTH &&
        qsize != SHA256_DIGEST_LENGTH)
        /* invalid q size */
        return 0;

    if (evpmd == NULL) {
        if (qsize == SHA_DIGEST_LENGTH)
            evpmd = FUNC30();
        else if (qsize == SHA224_DIGEST_LENGTH)
            evpmd = FUNC31();
        else
            evpmd = FUNC32();
    } else {
        qsize = FUNC29(evpmd);
    }

    if (bits < 512)
        bits = 512;

    bits = (bits + 63) / 64 * 64;

    if (seed_in != NULL) {
        if (seed_len < (size_t)qsize) {
            FUNC27(DSA_F_DSA_BUILTIN_PARAMGEN, DSA_R_SEED_LEN_SMALL);
            return 0;
        }
        if (seed_len > (size_t)qsize) {
            /* Only consume as much seed as is expected. */
            seed_len = qsize;
        }
        FUNC34(seed, seed_in, seed_len);
    }

    if ((mont = FUNC7()) == NULL)
        goto err;

    if ((ctx = FUNC3()) == NULL)
        goto err;

    FUNC4(ctx);

    r0 = FUNC2(ctx);
    g = FUNC2(ctx);
    W = FUNC2(ctx);
    q = FUNC2(ctx);
    X = FUNC2(ctx);
    c = FUNC2(ctx);
    p = FUNC2(ctx);
    test = FUNC2(ctx);

    if (test == NULL)
        goto err;

    if (!FUNC18(test, FUNC25(), bits - 1))
        goto err;

    for (;;) {
        for (;;) {              /* find q */
            int use_random_seed = (seed_in == NULL);

            /* step 1 */
            if (!FUNC5(cb, 0, m++))
                goto err;

            if (use_random_seed) {
                if (FUNC33(seed, qsize) <= 0)
                    goto err;
            } else {
                /* If we come back through, use random seed next time. */
                seed_in = NULL;
            }
            FUNC34(buf, seed, qsize);
            FUNC34(buf2, seed, qsize);
            /* precompute "SEED + 1" for step 7: */
            for (i = qsize - 1; i >= 0; i--) {
                buf[i]++;
                if (buf[i] != 0)
                    break;
            }

            /* step 2 */
            if (!FUNC28(seed, qsize, md, NULL, evpmd, NULL))
                goto err;
            if (!FUNC28(buf, qsize, buf2, NULL, evpmd, NULL))
                goto err;
            for (i = 0; i < qsize; i++)
                md[i] ^= buf2[i];

            /* step 3 */
            md[0] |= 0x80;
            md[qsize - 1] |= 0x01;
            if (!FUNC10(md, qsize, q))
                goto err;

            /* step 4 */
            r = FUNC11(q, ctx, cb);
            if (r > 0)
                break;
            if (r != 0)
                goto err;

            /* do a callback call */
            /* step 5 */
        }

        if (!FUNC5(cb, 2, 0))
            goto err;
        if (!FUNC5(cb, 3, 0))
            goto err;

        /* step 6 */
        counter = 0;
        /* "offset = 2" */

        n = (bits - 1) / 160;

        for (;;) {
            if ((counter != 0) && !FUNC5(cb, 0, counter))
                goto err;

            /* step 7 */
            FUNC26(W);
            /* now 'buf' contains "SEED + offset - 1" */
            for (k = 0; k <= n; k++) {
                /*
                 * obtain "SEED + offset + k" by incrementing:
                 */
                for (i = qsize - 1; i >= 0; i--) {
                    buf[i]++;
                    if (buf[i] != 0)
                        break;
                }

                if (!FUNC28(buf, qsize, md, NULL, evpmd, NULL))
                    goto err;

                /* step 8 */
                if (!FUNC10(md, qsize, r0))
                    goto err;
                if (!FUNC18(r0, r0, (qsize << 3) * k))
                    goto err;
                if (!FUNC9(W, W, r0))
                    goto err;
            }

            /* more of step 8 */
            if (!FUNC20(W, bits - 1))
                goto err;
            if (!FUNC13(X, W))
                goto err;
            if (!FUNC9(X, X, test))
                goto err;

            /* step 9 */
            if (!FUNC19(r0, q))
                goto err;
            if (!FUNC21(c, X, r0, ctx))
                goto err;
            if (!FUNC24(r0, c, FUNC25()))
                goto err;
            if (!FUNC24(p, X, r0))
                goto err;

            /* step 10 */
            if (FUNC12(p, test) >= 0) {
                /* step 11 */
                r = FUNC11(p, ctx, cb);
                if (r > 0)
                    goto end;   /* found it */
                if (r != 0)
                    goto err;
            }

            /* step 13 */
            counter++;
            /* "offset = offset + n + 1" */

            /* step 14 */
            if (counter >= 4096)
                break;
        }
    }
 end:
    if (!FUNC5(cb, 2, 1))
        goto err;

    /* We now need to generate g */
    /* Set r0=(p-1)/q */
    if (!FUNC24(test, p, FUNC25()))
        goto err;
    if (!FUNC14(r0, NULL, test, q, ctx))
        goto err;

    if (!FUNC23(test, h))
        goto err;
    if (!FUNC8(mont, p, ctx))
        goto err;

    for (;;) {
        /* g=test^r0%p */
        if (!FUNC22(g, test, r0, p, ctx, mont))
            goto err;
        if (!FUNC17(g))
            break;
        if (!FUNC9(test, test, FUNC25()))
            goto err;
        h++;
    }

    if (!FUNC5(cb, 3, 1))
        goto err;

    ok = 1;
 err:
    if (ok) {
        FUNC16(ret->p);
        FUNC16(ret->q);
        FUNC16(ret->g);
        ret->p = FUNC15(p);
        ret->q = FUNC15(q);
        ret->g = FUNC15(g);
        ret->dirty_cnt++;
        if (ret->p == NULL || ret->q == NULL || ret->g == NULL) {
            ok = 0;
            goto err;
        }
        if (counter_ret != NULL)
            *counter_ret = counter;
        if (h_ret != NULL)
            *h_ret = h;
        if (seed_out)
            FUNC34(seed_out, seed, qsize);
    }
    FUNC0(ctx);
    FUNC1(ctx);
    FUNC6(mont);
    return ok;
}
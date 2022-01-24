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
typedef  int /*<<< orphan*/  ggen ;
struct TYPE_3__ {int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/ * g; int /*<<< orphan*/ * q; int /*<<< orphan*/ * p; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
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
 int /*<<< orphan*/  DSA_F_DSA_BUILTIN_PARAMGEN2 ; 
 int /*<<< orphan*/  DSA_R_INVALID_PARAMETERS ; 
 int /*<<< orphan*/  DSA_R_Q_NOT_PRIME ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (unsigned char*,size_t,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC33 () ; 
 int FUNC34 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC35 () ; 
 int /*<<< orphan*/ * FUNC36 () ; 
 int /*<<< orphan*/ * FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (unsigned char*) ; 
 unsigned char* FUNC39 (size_t) ; 
 scalar_t__ FUNC40 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC41 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC42 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC43(DSA *ret, size_t L, size_t N,
                          const EVP_MD *evpmd, const unsigned char *seed_in,
                          size_t seed_len, int idx, unsigned char *seed_out,
                          int *counter_ret, unsigned long *h_ret,
                          BN_GENCB *cb)
{
    int ok = -1;
    unsigned char *seed = NULL, *seed_tmp = NULL;
    unsigned char md[EVP_MAX_MD_SIZE];
    int mdsize;
    BIGNUM *r0, *W, *X, *c, *test;
    BIGNUM *g = NULL, *q = NULL, *p = NULL;
    BN_MONT_CTX *mont = NULL;
    int i, k, n = 0, m = 0, qsize = N >> 3;
    int counter = 0;
    int r = 0;
    BN_CTX *ctx = NULL;
    EVP_MD_CTX *mctx = FUNC33();
    unsigned int h = 2;

    if (mctx == NULL)
        goto err;

    /* make sure L > N, otherwise we'll get trapped in an infinite loop */
    if (L <= N) {
        FUNC27(DSA_F_DSA_BUILTIN_PARAMGEN2, DSA_R_INVALID_PARAMETERS);
        goto err;
    }

    if (evpmd == NULL) {
        if (N == 160)
            evpmd = FUNC35();
        else if (N == 224)
            evpmd = FUNC36();
        else
            evpmd = FUNC37();
    }

    mdsize = FUNC34(evpmd);
    /* If unverifiable g generation only don't need seed */
    if (!ret->p || !ret->q || idx >= 0) {
        if (seed_len == 0)
            seed_len = mdsize;

        seed = FUNC39(seed_len);

        if (seed_out)
            seed_tmp = seed_out;
        else
            seed_tmp = FUNC39(seed_len);

        if (seed == NULL || seed_tmp == NULL)
            goto err;

        if (seed_in)
            FUNC41(seed, seed_in, seed_len);

    }

    if ((ctx = FUNC3()) == NULL)
        goto err;

    if ((mont = FUNC7()) == NULL)
        goto err;

    FUNC4(ctx);
    r0 = FUNC2(ctx);
    g = FUNC2(ctx);
    W = FUNC2(ctx);
    X = FUNC2(ctx);
    c = FUNC2(ctx);
    test = FUNC2(ctx);
    if (test == NULL)
        goto err;

    /* if p, q already supplied generate g only */
    if (ret->p && ret->q) {
        p = ret->p;
        q = ret->q;
        if (idx >= 0)
            FUNC41(seed_tmp, seed, seed_len);
        goto g_only;
    } else {
        p = FUNC2(ctx);
        q = FUNC2(ctx);
        if (q == NULL)
            goto err;
    }

    if (!FUNC18(test, FUNC25(), L - 1))
        goto err;
    for (;;) {
        for (;;) {              /* find q */
            unsigned char *pmd;
            /* step 1 */
            if (!FUNC5(cb, 0, m++))
                goto err;

            if (!seed_in) {
                if (FUNC40(seed, seed_len) <= 0)
                    goto err;
            }
            /* step 2 */
            if (!FUNC28(seed, seed_len, md, NULL, evpmd, NULL))
                goto err;
            /* Take least significant bits of md */
            if (mdsize > qsize)
                pmd = md + mdsize - qsize;
            else
                pmd = md;

            if (mdsize < qsize)
                FUNC42(md + mdsize, 0, qsize - mdsize);

            /* step 3 */
            pmd[0] |= 0x80;
            pmd[qsize - 1] |= 0x01;
            if (!FUNC10(pmd, qsize, q))
                goto err;

            /* step 4 */
            r = FUNC11(q, ctx, cb);
            if (r > 0)
                break;
            if (r != 0)
                goto err;
            /* Provided seed didn't produce a prime: error */
            if (seed_in) {
                ok = 0;
                FUNC27(DSA_F_DSA_BUILTIN_PARAMGEN2, DSA_R_Q_NOT_PRIME);
                goto err;
            }

            /* do a callback call */
            /* step 5 */
        }
        /* Copy seed to seed_out before we mess with it */
        if (seed_out)
            FUNC41(seed_out, seed, seed_len);

        if (!FUNC5(cb, 2, 0))
            goto err;
        if (!FUNC5(cb, 3, 0))
            goto err;

        /* step 6 */
        counter = 0;
        /* "offset = 1" */

        n = (L - 1) / (mdsize << 3);

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
                for (i = seed_len - 1; i >= 0; i--) {
                    seed[i]++;
                    if (seed[i] != 0)
                        break;
                }

                if (!FUNC28(seed, seed_len, md, NULL, evpmd, NULL))
                    goto err;

                /* step 8 */
                if (!FUNC10(md, mdsize, r0))
                    goto err;
                if (!FUNC18(r0, r0, (mdsize << 3) * k))
                    goto err;
                if (!FUNC9(W, W, r0))
                    goto err;
            }

            /* more of step 8 */
            if (!FUNC20(W, L - 1))
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
            if (counter >= (int)(4 * L))
                break;
        }
        if (seed_in) {
            ok = 0;
            FUNC27(DSA_F_DSA_BUILTIN_PARAMGEN2, DSA_R_INVALID_PARAMETERS);
            goto err;
        }
    }
 end:
    if (!FUNC5(cb, 2, 1))
        goto err;

 g_only:

    /* We now need to generate g */
    /* Set r0=(p-1)/q */
    if (!FUNC24(test, p, FUNC25()))
        goto err;
    if (!FUNC14(r0, NULL, test, q, ctx))
        goto err;

    if (idx < 0) {
        if (!FUNC23(test, h))
            goto err;
    } else
        h = 1;
    if (!FUNC8(mont, p, ctx))
        goto err;

    for (;;) {
        static const unsigned char ggen[4] = { 0x67, 0x67, 0x65, 0x6e };
        if (idx >= 0) {
            md[0] = idx & 0xff;
            md[1] = (h >> 8) & 0xff;
            md[2] = h & 0xff;
            if (!FUNC30(mctx, evpmd, NULL))
                goto err;
            if (!FUNC31(mctx, seed_tmp, seed_len))
                goto err;
            if (!FUNC31(mctx, ggen, sizeof(ggen)))
                goto err;
            if (!FUNC31(mctx, md, 3))
                goto err;
            if (!FUNC29(mctx, md, NULL))
                goto err;
            if (!FUNC10(md, mdsize, test))
                goto err;
        }
        /* g=test^r0%p */
        if (!FUNC22(g, test, r0, p, ctx, mont))
            goto err;
        if (!FUNC17(g))
            break;
        if (idx < 0 && !FUNC9(test, test, FUNC25()))
            goto err;
        h++;
        if (idx >= 0 && h > 0xffff)
            goto err;
    }

    if (!FUNC5(cb, 3, 1))
        goto err;

    ok = 1;
 err:
    if (ok == 1) {
        if (p != ret->p) {
            FUNC16(ret->p);
            ret->p = FUNC15(p);
        }
        if (q != ret->q) {
            FUNC16(ret->q);
            ret->q = FUNC15(q);
        }
        FUNC16(ret->g);
        ret->g = FUNC15(g);
        if (ret->p == NULL || ret->q == NULL || ret->g == NULL) {
            ok = -1;
            goto err;
        }
        ret->dirty_cnt++;
        if (counter_ret != NULL)
            *counter_ret = counter;
        if (h_ret != NULL)
            *h_ret = h;
    }
    FUNC38(seed);
    if (seed_out != seed_tmp)
        FUNC38(seed_tmp);
    FUNC0(ctx);
    FUNC1(ctx);
    FUNC6(mont);
    FUNC32(mctx);
    return ok;
}
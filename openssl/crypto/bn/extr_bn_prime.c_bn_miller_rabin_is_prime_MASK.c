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
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int BN_PRIMETEST_COMPOSITE ; 
 int BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME ; 
 int BN_PRIMETEST_COMPOSITE_WITH_FACTOR ; 
 int BN_PRIMETEST_PROBABLY_PRIME ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/  const*,int) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 

int FUNC24(const BIGNUM *w, int iterations, BN_CTX *ctx,
                             BN_GENCB *cb, int enhanced, int *status)
{
    int i, j, a, ret = 0;
    BIGNUM *g, *w1, *w3, *x, *m, *z, *b;
    BN_MONT_CTX *mont = NULL;

    /* w must be odd */
    if (!FUNC14(w))
        return 0;

    FUNC2(ctx);
    g = FUNC1(ctx);
    w1 = FUNC1(ctx);
    w3 = FUNC1(ctx);
    x = FUNC1(ctx);
    m = FUNC1(ctx);
    z = FUNC1(ctx);
    b = FUNC1(ctx);

    if (!(b != NULL
            /* w1 := w - 1 */
            && FUNC10(w1, w)
            && FUNC22(w1, 1)
            /* w3 := w - 3 */
            && FUNC10(w3, w)
            && FUNC22(w3, 3)))
        goto err;

    /* check w is larger than 3, otherwise the random b will be too small */
    if (FUNC16(w3) || FUNC13(w3))
        goto err;

    /* (Step 1) Calculate largest integer 'a' such that 2^a divides w-1 */
    a = 1;
    while (!FUNC12(w1, a))
        a++;
    /* (Step 2) m = (w-1) / 2^a */
    if (!FUNC21(m, w1, a))
        goto err;

    /* Montgomery setup for computations mod a */
    mont = FUNC5();
    if (mont == NULL || !FUNC6(mont, w, ctx))
        goto err;

    if (iterations == 0)
        iterations = FUNC23(FUNC19(w));

    /* (Step 4) */
    for (i = 0; i < iterations; ++i) {
        /* (Step 4.1) obtain a Random string of bits b where 1 < b < w-1 */
        if (!FUNC20(b, w3, ctx)
                || !FUNC7(b, 2)) /* 1 < b < w-1 */
            goto err;

        if (enhanced) {
            /* (Step 4.3) */
            if (!FUNC11(g, b, w, ctx))
                goto err;
            /* (Step 4.4) */
            if (!FUNC15(g)) {
                *status = BN_PRIMETEST_COMPOSITE_WITH_FACTOR;
                ret = 1;
                goto err;
            }
        }
        /* (Step 4.5) z = b^m mod w */
        if (!FUNC17(z, b, m, w, ctx, mont))
            goto err;
        /* (Step 4.6) if (z = 1 or z = w-1) */
        if (FUNC15(z) || FUNC9(z, w1) == 0)
            goto outer_loop;
        /* (Step 4.7) for j = 1 to a-1 */
        for (j = 1; j < a ; ++j) {
            /* (Step 4.7.1 - 4.7.2) x = z. z = x^2 mod w */
            if (!FUNC10(x, z) || !FUNC18(z, x, x, w, ctx))
                goto err;
            /* (Step 4.7.3) */
            if (FUNC9(z, w1) == 0)
                goto outer_loop;
            /* (Step 4.7.4) */
            if (FUNC15(z))
                goto composite;
        }
        /* At this point z = b^((w-1)/2) mod w */
        /* (Steps 4.8 - 4.9) x = z, z = x^2 mod w */
        if (!FUNC10(x, z) || !FUNC18(z, x, x, w, ctx))
            goto err;
        /* (Step 4.10) */
        if (FUNC15(z))
            goto composite;
        /* (Step 4.11) x = b^(w-1) mod w */
        if (!FUNC10(x, z))
            goto err;
composite:
        if (enhanced) {
            /* (Step 4.1.2) g = GCD(x-1, w) */
            if (!FUNC22(x, 1) || !FUNC11(g, x, w, ctx))
                goto err;
            /* (Steps 4.1.3 - 4.1.4) */
            if (FUNC15(g))
                *status = BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME;
            else
                *status = BN_PRIMETEST_COMPOSITE_WITH_FACTOR;
        } else {
            *status = BN_PRIMETEST_COMPOSITE;
        }
        ret = 1;
        goto err;
outer_loop: ;
        /* (Step 4.1.5) */
        if (!FUNC3(cb, 1, i))
            goto err;
    }
    /* (Step 5) */
    *status = BN_PRIMETEST_PROBABLY_PRIME;
    ret = 1;
err:
    FUNC8(g);
    FUNC8(w1);
    FUNC8(w3);
    FUNC8(x);
    FUNC8(m);
    FUNC8(z);
    FUNC8(b);
    FUNC0(ctx);
    FUNC4(mont);
    return ret;
}
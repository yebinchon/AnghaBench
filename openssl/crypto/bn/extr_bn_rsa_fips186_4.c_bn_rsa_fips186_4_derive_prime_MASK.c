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
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC20 () ; 
 int /*<<< orphan*/  const bn_inv_sqrt_2 ; 

int FUNC21(BIGNUM *Y, BIGNUM *X, const BIGNUM *Xin,
                                  const BIGNUM *r1, const BIGNUM *r2, int nlen,
                                  const BIGNUM *e, BN_CTX *ctx, BN_GENCB *cb)
{
    int ret = 0;
    int i, imax;
    int bits = nlen >> 1;
    BIGNUM *tmp, *R, *r1r2x2, *y1, *r1x2;
    BIGNUM *base, *range;

    FUNC2(ctx);

    base = FUNC1(ctx);
    range = FUNC1(ctx);
    R = FUNC1(ctx);
    tmp = FUNC1(ctx);
    r1r2x2 = FUNC1(ctx);
    y1 = FUNC1(ctx);
    r1x2 = FUNC1(ctx);
    if (r1x2 == NULL)
        goto err;

    if (Xin != NULL && FUNC7(X, Xin) == NULL)
        goto err;

    /*
     * We need to generate a random number X in the range
     * 1/sqrt(2) * 2^(nlen/2) <= X < 2^(nlen/2).
     * We can rewrite that as:
     * base = 1/sqrt(2) * 2^(nlen/2)
     * range = ((2^(nlen/2))) - (1/sqrt(2) * 2^(nlen/2))
     * X = base + random(range)
     * We only have the first 256 bit of 1/sqrt(2)
     */
    if (Xin == NULL) {
        if (bits < FUNC16(&bn_inv_sqrt_2))
            goto err;
        if (!FUNC11(base, &bn_inv_sqrt_2, bits - FUNC16(&bn_inv_sqrt_2))
            || !FUNC11(range, FUNC20(), bits)
            || !FUNC18(range, range, base))
            goto err;
    }

    if (!(FUNC12(r1x2, r1)
            /* (Step 1) GCD(2r1, r2) = 1 */
            && FUNC8(tmp, r1x2, r2, ctx)
            && FUNC10(tmp)
            /* (Step 2) R = ((r2^-1 mod 2r1) * r2) - ((2r1^-1 mod r2)*2r1) */
            && FUNC13(R, r2, r1x2, ctx)
            && FUNC15(R, R, r2, ctx) /* R = (r2^-1 mod 2r1) * r2 */
            && FUNC13(tmp, r1x2, r2, ctx)
            && FUNC15(tmp, tmp, r1x2, ctx) /* tmp = (2r1^-1 mod r2)*2r1 */
            && FUNC18(R, R, tmp)
            /* Calculate 2r1r2 */
            && FUNC15(r1r2x2, r1x2, r2, ctx)))
        goto err;
    /* Make positive by adding the modulus */
    if (FUNC9(R) && !FUNC4(R, R, r1r2x2))
        goto err;

    imax = 5 * bits; /* max = 5/2 * nbits */
    for (;;) {
        if (Xin == NULL) {
            /*
             * (Step 3) Choose Random X such that
             *    sqrt(2) * 2^(nlen/2-1) <= Random X <= (2^(nlen/2)) - 1.
             */
            if (!FUNC17(X, range, ctx) || !FUNC4(X, X, base))
                goto end;
        }
        /* (Step 4) Y = X + ((R - X) mod 2r1r2) */
        if (!FUNC14(Y, R, X, r1r2x2, ctx) || !FUNC4(Y, Y, X))
            goto err;
        /* (Step 5) */
        i = 0;
        for (;;) {
            /* (Step 6) */
            if (FUNC16(Y) > bits) {
                if (Xin == NULL)
                    break; /* Randomly Generated X so Go back to Step 3 */
                else
                    goto err; /* X is not random so it will always fail */
            }
            FUNC3(cb, 0, 2);

            /* (Step 7) If GCD(Y-1) == 1 & Y is probably prime then return Y */
            if (FUNC7(y1, Y) == NULL
                    || !FUNC19(y1, 1)
                    || !FUNC8(tmp, y1, e, ctx))
                goto err;
            if (FUNC10(tmp) && FUNC5(Y, ctx, cb))
                goto end;
            /* (Step 8-10) */
            if (++i >= imax || !FUNC4(Y, Y, r1r2x2))
                goto err;
        }
    }
end:
    ret = 1;
    FUNC3(cb, 3, 0);
err:
    FUNC6(y1);
    FUNC0(ctx);
    return ret;
}
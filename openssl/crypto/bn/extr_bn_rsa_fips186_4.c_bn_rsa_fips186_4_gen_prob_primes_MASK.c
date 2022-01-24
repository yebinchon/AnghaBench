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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ODD ; 
 int /*<<< orphan*/  BN_RAND_TOP_ONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC10(BIGNUM *p, BIGNUM *Xpout,
                                     BIGNUM *p1, BIGNUM *p2,
                                     const BIGNUM *Xp, const BIGNUM *Xp1,
                                     const BIGNUM *Xp2, int nlen,
                                     const BIGNUM *e, BN_CTX *ctx, BN_GENCB *cb)
{
    int ret = 0;
    BIGNUM *p1i = NULL, *p2i = NULL, *Xp1i = NULL, *Xp2i = NULL;
    int bitlen;

    if (p == NULL || Xpout == NULL)
        return 0;

    FUNC2(ctx);

    p1i = (p1 != NULL) ? p1 : FUNC1(ctx);
    p2i = (p2 != NULL) ? p2 : FUNC1(ctx);
    Xp1i = (Xp1 != NULL) ? (BIGNUM *)Xp1 : FUNC1(ctx);
    Xp2i = (Xp2 != NULL) ? (BIGNUM *)Xp2 : FUNC1(ctx);
    if (p1i == NULL || p2i == NULL || Xp1i == NULL || Xp2i == NULL)
        goto err;

    bitlen = FUNC7(nlen);
    if (bitlen == 0)
        goto err;

    /* (Steps 4.1/5.1): Randomly generate Xp1 if it is not passed in */
    if (Xp1 == NULL) {
        /* Set the top and bottom bits to make it odd and the correct size */
        if (!FUNC5(Xp1i, bitlen, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD,
                             ctx))
            goto err;
    }
    /* (Steps 4.1/5.1): Randomly generate Xp2 if it is not passed in */
    if (Xp2 == NULL) {
        /* Set the top and bottom bits to make it odd and the correct size */
        if (!FUNC5(Xp2i, bitlen, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD,
                             ctx))
            goto err;
    }

    /* (Steps 4.2/5.2) - find first auxiliary probable primes */
    if (!FUNC9(Xp1i, p1i, ctx, cb)
            || !FUNC9(Xp2i, p2i, ctx, cb))
        goto err;
    /* (Table B.1) auxiliary prime Max length check */
    if ((FUNC4(p1i) + FUNC4(p2i)) >=
            FUNC6(nlen))
        goto err;
    /* (Steps 4.3/5.3) - generate prime */
    if (!FUNC8(p, Xpout, Xp, p1i, p2i, nlen, e, ctx, cb))
        goto err;
    ret = 1;
err:
    /* Zeroize any internally generated values that are not returned */
    if (p1 == NULL)
        FUNC3(p1i);
    if (p2 == NULL)
        FUNC3(p2i);
    if (Xp1 == NULL)
        FUNC3(Xp1i);
    if (Xp2 == NULL)
        FUNC3(Xp2i);
    FUNC0(ctx);
    return ret;
}
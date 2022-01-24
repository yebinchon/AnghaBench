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
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

int FUNC9(RSA *rsa, int nbits, const BIGNUM *efixed,
                               BN_GENCB *cb)
{
    int ret = 0;
    int ok;
    BN_CTX *ctx = NULL;
    BIGNUM *e = NULL;

    /* (Steps 1a-1b) : Currently ignores the strength check */
    if (!FUNC8(nbits, -1))
        return 0;

    ctx = FUNC1();
    if (ctx == NULL)
        return 0;

    /* Set default if e is not passed in */
    if (efixed == NULL) {
        e = FUNC3();
        if (e == NULL || !FUNC4(e, 65537))
            goto err;
    } else {
        e = (BIGNUM *)efixed;
    }
    /* (Step 1c) fixed exponent is checked later . */

    for (;;) {
        /* (Step 2) Generate prime factors */
        if (!FUNC5(rsa, NULL, NULL, NULL, NULL, NULL,
                                           NULL, NULL, NULL, NULL, NULL, NULL,
                                           NULL, nbits, e, ctx, cb))
            goto err;
        /* (Steps 3-5) Compute params d, n, dP, dQ, qInv */
        ok = FUNC6(rsa, nbits, e, ctx);
        if (ok < 0)
            goto err;
        if (ok > 0)
            break;
        /* Gets here if computed d is too small - so try again */
    }

    /* (Step 6) Do pairwise test - optional validity test has been omitted */
    ret = FUNC7(rsa, ctx);
err:
    if (efixed == NULL)
        FUNC2(e);
    FUNC0(ctx);
    return ret;
}
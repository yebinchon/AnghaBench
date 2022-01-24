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
typedef  scalar_t__ BN_ULONG ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int BN_PRIMETEST_PROBABLY_PRIME ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int* primes ; 

__attribute__((used)) static int FUNC11(const BIGNUM *w, int checks, BN_CTX *ctx,
                           int do_trial_division, BN_GENCB *cb)
{
    int i, status, ret = -1;
#ifndef FIPS_MODE
    BN_CTX *ctxlocal = NULL;
#else

    if (ctx == NULL)
        return -1;
#endif

    /* w must be bigger than 1 */
    if (FUNC3(w, FUNC8()) <= 0)
        return 0;

    /* w must be odd */
    if (FUNC4(w)) {
        /* Take care of the really small prime 3 */
        if (FUNC5(w, 3))
            return 1;
    } else {
        /* 2 is the only even prime */
        return FUNC5(w, 2);
    }

    /* first look for small factors */
    if (do_trial_division) {
        int trial_divisions = FUNC10(FUNC7(w));

        for (i = 1; i < trial_divisions; i++) {
            BN_ULONG mod = FUNC6(w, primes[i]);
            if (mod == (BN_ULONG)-1)
                return -1;
            if (mod == 0)
                return FUNC5(w, primes[i]);
        }
        if (!FUNC2(cb, 1, -1))
            return -1;
    }
#ifndef FIPS_MODE
    if (ctx == NULL && (ctxlocal = ctx = FUNC1()) == NULL)
        goto err;
#endif

    ret = FUNC9(w, checks, ctx, cb, 0, &status);
    if (!ret)
        goto err;
    ret = (status == BN_PRIMETEST_PROBABLY_PRIME);
err:
#ifndef FIPS_MODE
    FUNC0(ctxlocal);
#endif
    return ret;
}
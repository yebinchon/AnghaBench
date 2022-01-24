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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  BN_F_BN_EXP ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 

int FUNC13(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx)
{
    int i, bits, ret = 0;
    BIGNUM *v, *rr;

    if (FUNC4(p, BN_FLG_CONSTTIME) != 0
            || FUNC4(a, BN_FLG_CONSTTIME) != 0) {
        /* BN_FLG_CONSTTIME only supported by BN_mod_exp_mont() */
        FUNC11(BN_F_BN_EXP, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }

    FUNC2(ctx);
    rr = ((r == a) || (r == p)) ? FUNC1(ctx) : r;
    v = FUNC1(ctx);
    if (rr == NULL || v == NULL)
        goto err;

    if (FUNC3(v, a) == NULL)
        goto err;
    bits = FUNC8(p);

    if (FUNC6(p)) {
        if (FUNC3(rr, a) == NULL)
            goto err;
    } else {
        if (!FUNC9(rr))
            goto err;
    }

    for (i = 1; i < bits; i++) {
        if (!FUNC10(v, v, ctx))
            goto err;
        if (FUNC5(p, i)) {
            if (!FUNC7(rr, rr, v, ctx))
                goto err;
        }
    }
    if (r != rr && FUNC3(r, rr) == NULL)
        goto err;

    ret = 1;
 err:
    FUNC0(ctx);
    FUNC12(r);
    return ret;
}
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
 int /*<<< orphan*/  BN_F_BN_GF2M_MOD_SOLVE_QUAD_ARR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_TOP_ONE ; 
 int /*<<< orphan*/  BN_R_NO_SOLUTION ; 
 int /*<<< orphan*/  BN_R_TOO_MANY_ITERATIONS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_ITERATIONS ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 

int FUNC14(BIGNUM *r, const BIGNUM *a_, const int p[],
                               BN_CTX *ctx)
{
    int ret = 0, count = 0, j;
    BIGNUM *a, *z, *rho, *w, *w2, *tmp;

    FUNC13(a_);

    if (p[0] == 0) {
        /* reduction mod 1 => return 0 */
        FUNC11(r);
        return 1;
    }

    FUNC2(ctx);
    a = FUNC1(ctx);
    z = FUNC1(ctx);
    w = FUNC1(ctx);
    if (w == NULL)
        goto err;

    if (!FUNC5(a, a_, p))
        goto err;

    if (FUNC9(a)) {
        FUNC11(r);
        ret = 1;
        goto err;
    }

    if (p[0] & 0x1) {           /* m is odd */
        /* compute half-trace of a */
        if (!FUNC8(z, a))
            goto err;
        for (j = 1; j <= (p[0] - 1) / 2; j++) {
            if (!FUNC7(z, z, p, ctx))
                goto err;
            if (!FUNC7(z, z, p, ctx))
                goto err;
            if (!FUNC3(z, z, a))
                goto err;
        }

    } else {                    /* m is even */

        rho = FUNC1(ctx);
        w2 = FUNC1(ctx);
        tmp = FUNC1(ctx);
        if (tmp == NULL)
            goto err;
        do {
            if (!FUNC10(rho, p[0], BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY,
                                 ctx))
                goto err;
            if (!FUNC5(rho, rho, p))
                goto err;
            FUNC11(z);
            if (!FUNC8(w, rho))
                goto err;
            for (j = 1; j <= p[0] - 1; j++) {
                if (!FUNC7(z, z, p, ctx))
                    goto err;
                if (!FUNC7(w2, w, p, ctx))
                    goto err;
                if (!FUNC6(tmp, w2, a, p, ctx))
                    goto err;
                if (!FUNC3(z, z, tmp))
                    goto err;
                if (!FUNC3(w, w2, rho))
                    goto err;
            }
            count++;
        } while (FUNC9(w) && (count < MAX_ITERATIONS));
        if (FUNC9(w)) {
            FUNC12(BN_F_BN_GF2M_MOD_SOLVE_QUAD_ARR, BN_R_TOO_MANY_ITERATIONS);
            goto err;
        }
    }

    if (!FUNC7(w, z, p, ctx))
        goto err;
    if (!FUNC3(w, z, w))
        goto err;
    if (FUNC4(w, a)) {
        FUNC12(BN_F_BN_GF2M_MOD_SOLVE_QUAD_ARR, BN_R_NO_SOLUTION);
        goto err;
    }

    if (!FUNC8(r, z))
        goto err;
    FUNC13(r);

    ret = 1;

 err:
    FUNC0(ctx);
    return ret;
}
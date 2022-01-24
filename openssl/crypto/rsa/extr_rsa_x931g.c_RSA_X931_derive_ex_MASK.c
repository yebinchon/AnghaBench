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
struct TYPE_3__ {int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/ * iqmp; int /*<<< orphan*/ * p; int /*<<< orphan*/ * q; int /*<<< orphan*/ * d; int /*<<< orphan*/ * dmq1; int /*<<< orphan*/ * dmp1; int /*<<< orphan*/ * e; int /*<<< orphan*/ * n; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int FUNC15(RSA *rsa, BIGNUM *p1, BIGNUM *p2, BIGNUM *q1,
                       BIGNUM *q2, const BIGNUM *Xp1, const BIGNUM *Xp2,
                       const BIGNUM *Xp, const BIGNUM *Xq1, const BIGNUM *Xq2,
                       const BIGNUM *Xq, const BIGNUM *e, BN_GENCB *cb)
{
    BIGNUM *r0 = NULL, *r1 = NULL, *r2 = NULL, *r3 = NULL;
    BN_CTX *ctx = NULL, *ctx2 = NULL;
    int ret = 0;

    if (!rsa)
        goto err;

    ctx = FUNC3();
    if (ctx == NULL)
        goto err;
    FUNC4(ctx);

    r0 = FUNC2(ctx);
    r1 = FUNC2(ctx);
    r2 = FUNC2(ctx);
    r3 = FUNC2(ctx);

    if (r3 == NULL)
        goto err;
    if (!rsa->e) {
        rsa->e = FUNC7(e);
        if (!rsa->e)
            goto err;
    } else {
        e = rsa->e;
    }

    /*
     * If not all parameters present only calculate what we can. This allows
     * test programs to output selective parameters.
     */

    if (Xp && rsa->p == NULL) {
        rsa->p = FUNC12();
        if (rsa->p == NULL)
            goto err;

        if (!FUNC5(rsa->p, p1, p2,
                                     Xp, Xp1, Xp2, e, ctx, cb))
            goto err;
    }

    if (Xq && rsa->q == NULL) {
        rsa->q = FUNC12();
        if (rsa->q == NULL)
            goto err;
        if (!FUNC5(rsa->q, q1, q2,
                                     Xq, Xq1, Xq2, e, ctx, cb))
            goto err;
    }

    if (rsa->p == NULL || rsa->q == NULL) {
        FUNC0(ctx);
        FUNC1(ctx);
        return 2;
    }

    /*
     * Since both primes are set we can now calculate all remaining
     * components.
     */

    /* calculate n */
    rsa->n = FUNC12();
    if (rsa->n == NULL)
        goto err;
    if (!FUNC11(rsa->n, rsa->p, rsa->q, ctx))
        goto err;

    /* calculate d */
    if (!FUNC13(r1, rsa->p, FUNC14()))
        goto err;               /* p-1 */
    if (!FUNC13(r2, rsa->q, FUNC14()))
        goto err;               /* q-1 */
    if (!FUNC11(r0, r1, r2, ctx))
        goto err;               /* (p-1)(q-1) */

    if (!FUNC8(r3, r1, r2, ctx))
        goto err;

    if (!FUNC6(r0, NULL, r0, r3, ctx))
        goto err;               /* LCM((p-1)(q-1)) */

    ctx2 = FUNC3();
    if (ctx2 == NULL)
        goto err;

    rsa->d = FUNC10(NULL, rsa->e, r0, ctx2); /* d */
    if (rsa->d == NULL)
        goto err;

    /* calculate d mod (p-1) */
    rsa->dmp1 = FUNC12();
    if (rsa->dmp1 == NULL)
        goto err;
    if (!FUNC9(rsa->dmp1, rsa->d, r1, ctx))
        goto err;

    /* calculate d mod (q-1) */
    rsa->dmq1 = FUNC12();
    if (rsa->dmq1 == NULL)
        goto err;
    if (!FUNC9(rsa->dmq1, rsa->d, r2, ctx))
        goto err;

    /* calculate inverse of q mod p */
    rsa->iqmp = FUNC10(NULL, rsa->q, rsa->p, ctx2);
    if (rsa->iqmp == NULL)
        goto err;

    rsa->dirty_cnt++;
    ret = 1;
 err:
    FUNC0(ctx);
    FUNC1(ctx);
    FUNC1(ctx2);

    return ret;

}
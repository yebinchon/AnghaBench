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
struct TYPE_3__ {int /*<<< orphan*/ * dmp1; int /*<<< orphan*/ * dmq1; int /*<<< orphan*/ * iqmp; int /*<<< orphan*/ * n; int /*<<< orphan*/ * d; int /*<<< orphan*/ * e; int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/ * p; int /*<<< orphan*/  const* q; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 void* FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 () ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC14(RSA *rsa, int nbits,
                                        const BIGNUM *e, BN_CTX *ctx)
{
    int ret = -1;
    BIGNUM *p1, *q1, *lcm, *p1q1, *gcd;

    FUNC2(ctx);
    p1 = FUNC1(ctx);
    q1 = FUNC1(ctx);
    lcm = FUNC1(ctx);
    p1q1 = FUNC1(ctx);
    gcd = FUNC1(ctx);
    if (gcd == NULL)
        goto err;

    /* LCM((p-1, q-1)) */
    if (FUNC13(ctx, rsa->p, rsa->q, lcm, gcd, p1, q1, p1q1) != 1)
        goto err;

    /* copy e */
    FUNC6(rsa->e);
    rsa->e = FUNC5(e);
    if (rsa->e == NULL)
        goto err;

    FUNC4(rsa->d);
    /* (Step 3) d = (e^-1) mod (LCM(p-1, q-1)) */
    rsa->d = FUNC12();
    if (rsa->d == NULL || FUNC8(rsa->d, e, lcm, ctx) == NULL)
        goto err;

    /* (Step 3) return an error if d is too small */
    if (FUNC11(rsa->d) <= (nbits >> 1)) {
        ret = 0;
        goto err;
    }

    /* (Step 4) n = pq */
    if (rsa->n == NULL)
        rsa->n = FUNC10();
    if (rsa->n == NULL || !FUNC9(rsa->n, rsa->p, rsa->q, ctx))
        goto err;

    /* (Step 5a) dP = d mod (p-1) */
    if (rsa->dmp1 == NULL)
        rsa->dmp1 = FUNC10();
    if (rsa->dmp1 == NULL || !FUNC7(rsa->dmp1, rsa->d, p1, ctx))
        goto err;

    /* (Step 5b) dQ = d mod (q-1) */
    if (rsa->dmq1 == NULL)
        rsa->dmq1 = FUNC12();
    if (rsa->dmq1 == NULL || !FUNC7(rsa->dmq1, rsa->d, q1, ctx))
        goto err;

    /* (Step 5c) qInv = (inverse of q) mod p */
    FUNC6(rsa->iqmp);
    rsa->iqmp = FUNC12();
    if (rsa->iqmp == NULL
            || FUNC8(rsa->iqmp, rsa->q, rsa->p, ctx) == NULL)
        goto err;

    rsa->dirty_cnt++;
    ret = 1;
err:
    if (ret != 1) {
        FUNC6(rsa->e);
        rsa->e = NULL;
        FUNC6(rsa->d);
        rsa->d = NULL;
        FUNC6(rsa->n);
        rsa->n = NULL;
        FUNC6(rsa->iqmp);
        rsa->iqmp = NULL;
        FUNC6(rsa->dmq1);
        rsa->dmq1 = NULL;
        FUNC6(rsa->dmp1);
        rsa->dmp1 = NULL;
    }
    FUNC3(p1);
    FUNC3(q1);
    FUNC3(lcm);
    FUNC3(p1q1);
    FUNC3(gcd);

    FUNC0(ctx);
    return ret;
}
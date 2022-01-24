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
struct nistp_test_params {int /*<<< orphan*/  d; int /*<<< orphan*/  degree; int /*<<< orphan*/  order; int /*<<< orphan*/  Gy; int /*<<< orphan*/  Gx; int /*<<< orphan*/  Qy; int /*<<< orphan*/  Qx; int /*<<< orphan*/  b; int /*<<< orphan*/  a; int /*<<< orphan*/  p; int /*<<< orphan*/  (* meth ) () ;} ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ *) ; 
 struct nistp_test_params* nistp_tests_params ; 
 int /*<<< orphan*/  FUNC31 () ; 

__attribute__((used)) static int FUNC32(int idx)
{
    const struct nistp_test_params *test = nistp_tests_params + idx;
    BN_CTX *ctx = NULL;
    BIGNUM *p = NULL, *a = NULL, *b = NULL, *x = NULL, *y = NULL;
    BIGNUM *n = NULL, *m = NULL, *order = NULL, *yplusone = NULL;
    EC_GROUP *NISTP = NULL;
    EC_POINT *G = NULL, *P = NULL, *Q = NULL, *Q_CHECK = NULL;
    int r = 0;

    FUNC27("NIST curve P-%d (optimised implementation):",
              test->degree);
    if (!FUNC28(ctx = FUNC1())
        || !FUNC28(p = FUNC6())
        || !FUNC28(a = FUNC6())
        || !FUNC28(b = FUNC6())
        || !FUNC28(x = FUNC6())
        || !FUNC28(y = FUNC6())
        || !FUNC28(m = FUNC6())
        || !FUNC28(n = FUNC6())
        || !FUNC28(order = FUNC6())
        || !FUNC28(yplusone = FUNC6())

        || !FUNC28(NISTP = FUNC13(test->meth()))
        || !FUNC29(FUNC5(&p, test->p))
        || !FUNC26(1, FUNC3(p, ctx, NULL))
        || !FUNC29(FUNC5(&a, test->a))
        || !FUNC29(FUNC5(&b, test->b))
        || !FUNC29(FUNC15(NISTP, p, a, b, ctx))
        || !FUNC28(G = FUNC23(NISTP))
        || !FUNC28(P = FUNC23(NISTP))
        || !FUNC28(Q = FUNC23(NISTP))
        || !FUNC28(Q_CHECK = FUNC23(NISTP))
        || !FUNC29(FUNC5(&x, test->Qx))
        || !FUNC29(FUNC5(&y, test->Qy))
        || !FUNC29(FUNC2(yplusone, y, FUNC9()))
    /*
     * When (x, y) is on the curve, (x, y + 1) is, as it happens, not,
     * and therefore setting the coordinates should fail.
     */
        || !FUNC25(FUNC24(NISTP, Q_CHECK, x,
                                                       yplusone, ctx))
        || !FUNC29(FUNC24(NISTP, Q_CHECK, x, y,
                                                      ctx))
        || !FUNC29(FUNC5(&x, test->Gx))
        || !FUNC29(FUNC5(&y, test->Gy))
        || !FUNC29(FUNC24(NISTP, G, x, y, ctx))
        || !FUNC29(FUNC5(&order, test->order))
        || !FUNC29(FUNC16(NISTP, G, order, FUNC9()))
        || !FUNC26(FUNC11(NISTP), test->degree))
        goto err;

    FUNC27("NIST test vectors ... ");
    if (!FUNC29(FUNC5(&n, test->d)))
        goto err;
    /* fixed point multiplication */
    FUNC22(NISTP, Q, n, NULL, NULL, ctx);
    if (!FUNC26(0, FUNC17(NISTP, Q, Q_CHECK, ctx)))
        goto err;
    /* random point multiplication */
    FUNC22(NISTP, Q, NULL, G, n, ctx);
    if (!FUNC26(0, FUNC17(NISTP, Q, Q_CHECK, ctx))

        /* set generator to P = 2*G, where G is the standard generator */
        || !FUNC29(FUNC19(NISTP, P, G, ctx))
        || !FUNC29(FUNC16(NISTP, P, order, FUNC9()))
        /* set the scalar to m=n/2, where n is the NIST test scalar */
        || !FUNC29(FUNC7(m, n, 1)))
        goto err;

    /* test the non-standard generator */
    /* fixed point multiplication */
    FUNC22(NISTP, Q, m, NULL, NULL, ctx);
    if (!FUNC26(0, FUNC17(NISTP, Q, Q_CHECK, ctx)))
        goto err;
    /* random point multiplication */
    FUNC22(NISTP, Q, NULL, P, m, ctx);
    if (!FUNC26(0, FUNC17(NISTP, Q, Q_CHECK, ctx))

    /*
     * We have not performed precomputation so have_precompute mult should be
     * false
     */
        || !FUNC25(FUNC12(NISTP))

    /* now repeat all tests with precomputation */
        || !FUNC29(FUNC14(NISTP, ctx))
        || !FUNC29(FUNC12(NISTP)))
        goto err;

    /* fixed point multiplication */
    FUNC22(NISTP, Q, m, NULL, NULL, ctx);
    if (!FUNC26(0, FUNC17(NISTP, Q, Q_CHECK, ctx)))
        goto err;
    /* random point multiplication */
    FUNC22(NISTP, Q, NULL, P, m, ctx);
    if (!FUNC26(0, FUNC17(NISTP, Q, Q_CHECK, ctx))

    /* reset generator */
        || !FUNC29(FUNC16(NISTP, G, order, FUNC9())))
        goto err;
    /* fixed point multiplication */
    FUNC22(NISTP, Q, n, NULL, NULL, ctx);
    if (!FUNC26(0, FUNC17(NISTP, Q, Q_CHECK, ctx)))
        goto err;
    /* random point multiplication */
    FUNC22(NISTP, Q, NULL, G, n, ctx);
    if (!FUNC26(0, FUNC17(NISTP, Q, Q_CHECK, ctx)))
        goto err;

    /* regression test for felem_neg bug */
    if (!FUNC29(FUNC8(m, 32))
        || !FUNC29(FUNC8(n, 31))
        || !FUNC29(FUNC18(P, G))
        || !FUNC29(FUNC21(NISTP, P, ctx))
        || !FUNC29(FUNC22(NISTP, Q, m, P, n, ctx))
        || !FUNC26(0, FUNC17(NISTP, Q, G, ctx)))
      goto err;

    r = FUNC30(NISTP);
err:
    FUNC10(NISTP);
    FUNC20(G);
    FUNC20(P);
    FUNC20(Q);
    FUNC20(Q_CHECK);
    FUNC4(n);
    FUNC4(m);
    FUNC4(p);
    FUNC4(a);
    FUNC4(b);
    FUNC4(x);
    FUNC4(y);
    FUNC4(order);
    FUNC4(yplusone);
    FUNC0(ctx);
    return r;
}
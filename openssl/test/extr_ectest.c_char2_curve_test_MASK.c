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
struct c2_curve_test {int /*<<< orphan*/  degree; int /*<<< orphan*/  name; int /*<<< orphan*/  cof; int /*<<< orphan*/  order; int /*<<< orphan*/  y; int /*<<< orphan*/  y_bit; int /*<<< orphan*/  x; int /*<<< orphan*/  b; int /*<<< orphan*/  a; int /*<<< orphan*/  p; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int FUNC32 (struct c2_curve_test*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (char*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 struct c2_curve_test* char2_curve_tests ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC44(int n)
{
    int r = 0;
    BN_CTX *ctx = NULL;
    BIGNUM *p = NULL, *a = NULL, *b = NULL;
    BIGNUM *x = NULL, *y = NULL, *z = NULL, *cof = NULL, *yplusone = NULL;
    EC_GROUP *group = NULL, *variable = NULL;
    EC_POINT *P = NULL, *Q = NULL, *R = NULL;
    const EC_POINT *points[3];
    const BIGNUM *scalars[3];
    struct c2_curve_test *const test = char2_curve_tests + n;

    if (!FUNC40(ctx = FUNC1())
        || !FUNC40(p = FUNC5())
        || !FUNC40(a = FUNC5())
        || !FUNC40(b = FUNC5())
        || !FUNC40(x = FUNC5())
        || !FUNC40(y = FUNC5())
        || !FUNC40(z = FUNC5())
        || !FUNC40(yplusone = FUNC5())
        || !FUNC41(FUNC4(&p, test->p))
        || !FUNC41(FUNC4(&a, test->a))
        || !FUNC41(FUNC4(&b, test->b))
        || !FUNC41(group = FUNC16(FUNC11()))
        || !FUNC41(FUNC17(group, p, a, b, ctx))
        || !FUNC40(P = FUNC28(group))
        || !FUNC40(Q = FUNC28(group))
        || !FUNC40(R = FUNC28(group))
        || !FUNC41(FUNC4(&x, test->x))
        || !FUNC41(FUNC4(&y, test->y))
        || !FUNC41(FUNC2(yplusone, y, FUNC10())))
        goto err;

/* Change test based on whether binary point compression is enabled or not. */
# ifdef OPENSSL_EC_BIN_PT_COMP
    /*
     * When (x, y) is on the curve, (x, y + 1) is, as it happens, not,
     * and therefore setting the coordinates should fail.
     */
    if (!TEST_false(EC_POINT_set_affine_coordinates(group, P, x, yplusone, ctx))
        || !TEST_true(EC_POINT_set_compressed_coordinates(group, P, x,
                                                          test->y_bit,
                                                          ctx))
        || !TEST_int_gt(EC_POINT_is_on_curve(group, P, ctx), 0)
        || !TEST_true(BN_hex2bn(&z, test->order))
        || !TEST_true(BN_hex2bn(&cof, test->cof))
        || !TEST_true(EC_GROUP_set_generator(group, P, z, cof))
        || !TEST_true(EC_POINT_get_affine_coordinates(group, P, x, y, ctx)))
        goto err;
    TEST_info("%s -- Generator", test->name);
    test_output_bignum("x", x);
    test_output_bignum("y", y);
    /* G_y value taken from the standard: */
    if (!TEST_true(BN_hex2bn(&z, test->y))
        || !TEST_BN_eq(y, z))
        goto err;
# else
    /*
     * When (x, y) is on the curve, (x, y + 1) is, as it happens, not,
     * and therefore setting the coordinates should fail.
     */
    if (!FUNC35(FUNC29(group, P, x, yplusone, ctx))
        || !FUNC41(FUNC29(group, P, x, y, ctx))
        || !FUNC38(FUNC27(group, P, ctx), 0)
        || !FUNC41(FUNC4(&z, test->order))
        || !FUNC41(FUNC4(&cof, test->cof))
        || !FUNC41(FUNC18(group, P, z, cof)))
        goto err;
    FUNC36("%s -- Generator:", test->name);
    FUNC43("x", x);
    FUNC43("y", y);
# endif

    if (!FUNC37(FUNC14(group), test->degree)
        || !FUNC42(group)
        || !FUNC40(variable = FUNC16(FUNC15(group)))
        || !FUNC41(FUNC12(variable, group)))
        goto err;

    /* more tests using the last curve */
    if (n == FUNC32(char2_curve_tests) - 1) {
        if (!FUNC41(FUNC29(group, P, x, y, ctx))
            || !FUNC41(FUNC21(Q, P))
            || !FUNC35(FUNC26(group, Q))
            || !FUNC41(FUNC22(group, P, P, ctx))
            || !FUNC38(FUNC27(group, P, ctx), 0)
            || !FUNC41(FUNC25(group, Q, ctx))       /* P = -2Q */
            || !FUNC41(FUNC19(group, R, P, Q, ctx))
            || !FUNC41(FUNC19(group, R, R, Q, ctx))
            || !FUNC41(FUNC26(group, R))   /* R = P + 2Q */
            || !FUNC35(FUNC26(group, Q)))
            goto err;

        points[0] = Q;
        points[1] = Q;
        points[2] = Q;

        if (!FUNC41(FUNC2(y, z, FUNC10()))
            || !FUNC34(y)
            || !FUNC41(FUNC8(y, y)))
            goto err;
        scalars[0] = y;         /* (group order + 1)/2, so y*Q + y*Q = Q */
        scalars[1] = y;

        FUNC39("combined multiplication ...");

        /* z is still the group order */
        if (!FUNC41(FUNC31(group, P, NULL, 2, points, scalars, ctx))
            || !FUNC41(FUNC31(group, R, z, 2, points, scalars, ctx))
            || !FUNC37(0, FUNC20(group, P, R, ctx))
            || !FUNC37(0, FUNC20(group, R, Q, ctx)))
            goto err;

        if (!FUNC41(FUNC7(y, FUNC6(y), 0, 0))
            || !FUNC41(FUNC2(z, z, y)))
            goto err;
        FUNC9(z, 1);
        scalars[0] = y;
        scalars[1] = z;         /* z = -(order + y) */

        if (!FUNC41(FUNC31(group, P, NULL, 2, points, scalars, ctx))
            || !FUNC41(FUNC26(group, P)))
            goto err;

        if (!FUNC41(FUNC7(x, FUNC6(y) - 1, 0, 0))
            || !FUNC41(FUNC2(z, x, y)))
            goto err;
        FUNC9(z, 1);
        scalars[0] = x;
        scalars[1] = y;
        scalars[2] = z;         /* z = -(x+y) */

        if (!FUNC41(FUNC31(group, P, NULL, 3, points, scalars, ctx))
            || !FUNC41(FUNC26(group, P)))
            goto err;;
    }

    r = 1;
err:
    FUNC0(ctx);
    FUNC3(p);
    FUNC3(a);
    FUNC3(b);
    FUNC3(x);
    FUNC3(y);
    FUNC3(z);
    FUNC3(yplusone);
    FUNC3(cof);
    FUNC23(P);
    FUNC23(Q);
    FUNC23(R);
    FUNC13(group);
    FUNC13(variable);
    return r;
}
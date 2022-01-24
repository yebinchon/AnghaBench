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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POINT_CONVERSION_COMPRESSED ; 
 int /*<<< orphan*/  POINT_CONVERSION_HYBRID ; 
 int /*<<< orphan*/  POINT_CONVERSION_UNCOMPRESSED ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC36(void)
{
    BN_CTX *ctx = NULL;
    BIGNUM *p = NULL, *a = NULL, *b = NULL;
    EC_GROUP *group = NULL, *tmp = NULL;
    EC_POINT *P = NULL, *Q = NULL, *R = NULL;
    BIGNUM *x = NULL, *y = NULL, *z = NULL, *cof = NULL, *yplusone = NULL;
    unsigned char buf[100];
    size_t len;
    int k, r = 0;

    if (!FUNC31(ctx = FUNC1())
        || !FUNC31(p = FUNC4())
        || !FUNC31(a = FUNC4())
        || !FUNC31(b = FUNC4())
        || !FUNC33(FUNC3(&p, "13"))
        || !FUNC33(FUNC3(&a, "3"))
        || !FUNC33(FUNC3(&b, "1")))
        goto err;

    group = FUNC10(FUNC5()); /* applications should use
                                                    * EC_GROUP_new_curve_GF2m
                                                    * so that the library gets
                                                    * to choose the EC_METHOD */
    if (!FUNC31(group)
        || !FUNC33(FUNC11(group, p, a, b, ctx))
        || !FUNC31(tmp = FUNC10(FUNC9(group)))
        || !FUNC33(FUNC6(tmp, group)))
        goto err;
    FUNC7(group);
    group = tmp;
    tmp = NULL;

    if (!FUNC33(FUNC8(group, p, a, b, ctx)))
        goto err;

    FUNC26("Curve defined by Weierstrass equation");
    FUNC30("     y^2 + x*y = x^3 + a*x^2 + b (mod p)");
    FUNC34("a", a);
    FUNC34("b", b);
    FUNC34("p", p);

     if (!FUNC31(P = FUNC20(group))
        || !FUNC31(Q = FUNC20(group))
        || !FUNC31(R = FUNC20(group))
        || !FUNC33(FUNC25(group, P))
        || !FUNC33(FUNC18(group, P)))
        goto err;

    buf[0] = 0;
    if (!FUNC33(FUNC21(group, Q, buf, 1, ctx))
        || !FUNC33(FUNC12(group, P, P, Q, ctx))
        || !FUNC33(FUNC18(group, P))
        || !FUNC31(x = FUNC4())
        || !FUNC31(y = FUNC4())
        || !FUNC31(z = FUNC4())
        || !FUNC31(cof = FUNC4())
        || !FUNC31(yplusone = FUNC4())
        || !FUNC33(FUNC3(&x, "6"))
/* Change test based on whether binary point compression is enabled or not. */
#  ifdef OPENSSL_EC_BIN_PT_COMP
        || !TEST_true(EC_POINT_set_compressed_coordinates(group, Q, x, 1, ctx))
#  else
        || !FUNC33(FUNC3(&y, "8"))
        || !FUNC33(FUNC23(group, Q, x, y, ctx))
#  endif
       )
        goto err;
    if (!FUNC28(FUNC19(group, Q, ctx), 0)) {
/* Change test based on whether binary point compression is enabled or not. */
#  ifdef OPENSSL_EC_BIN_PT_COMP
        if (!TEST_true(EC_POINT_get_affine_coordinates(group, Q, x, y, ctx)))
            goto err;
#  endif
        FUNC26("Point is not on curve");
        FUNC34("x", x);
        FUNC34("y", y);
        goto err;
    }

    FUNC30("A cyclic subgroup:");
    k = 100;
    do {
        if (!FUNC29(k--, 0))
            goto err;

        if (FUNC18(group, P))
            FUNC30("     point at infinity");
        else {
            if (!FUNC33(FUNC16(group, P, x, y,
                                                           ctx)))
                goto err;

            FUNC34("x", x);
            FUNC34("y", y);
        }

        if (!FUNC33(FUNC14(R, P))
            || !FUNC33(FUNC12(group, P, P, Q, ctx)))
            goto err;
    }
    while (!FUNC18(group, P));

    if (!FUNC33(FUNC12(group, P, Q, R, ctx))
        || !FUNC33(FUNC18(group, P)))
        goto err;

/* Change test based on whether binary point compression is enabled or not. */
#  ifdef OPENSSL_EC_BIN_PT_COMP
    len = EC_POINT_point2oct(group, Q, POINT_CONVERSION_COMPRESSED,
                             buf, sizeof(buf), ctx);
    if (!TEST_size_t_ne(len, 0)
        || !TEST_true(EC_POINT_oct2point(group, P, buf, len, ctx))
        || !TEST_int_eq(0, EC_POINT_cmp(group, P, Q, ctx)))
        goto err;
    test_output_memory("Generator as octet string, compressed form:",
                       buf, len);
#  endif

    len = FUNC22(group, Q, POINT_CONVERSION_UNCOMPRESSED,
                             buf, sizeof(buf), ctx);
    if (!FUNC32(len, 0)
        || !FUNC33(FUNC21(group, P, buf, len, ctx))
        || !FUNC27(0, FUNC13(group, P, Q, ctx)))
        goto err;
    FUNC35("Generator as octet string, uncompressed form:",
                       buf, len);

/* Change test based on whether binary point compression is enabled or not. */
#  ifdef OPENSSL_EC_BIN_PT_COMP
    len =
        EC_POINT_point2oct(group, Q, POINT_CONVERSION_HYBRID, buf, sizeof(buf),
                           ctx);
    if (!TEST_size_t_ne(len, 0)
        || !TEST_true(EC_POINT_oct2point(group, P, buf, len, ctx))
        || !TEST_int_eq(0, EC_POINT_cmp(group, P, Q, ctx)))
        goto err;
    test_output_memory("Generator as octet string, hybrid form:",
                       buf, len);
#  endif

    if (!FUNC33(FUNC17(group, P, ctx))
        || !FUNC27(0, FUNC13(group, P, R, ctx)))
        goto err;

    FUNC30("\n");

    r = 1;
err:
    FUNC0(ctx);
    FUNC2(p);
    FUNC2(a);
    FUNC2(b);
    FUNC7(group);
    FUNC7(tmp);
    FUNC15(P);
    FUNC15(Q);
    FUNC15(R);
    FUNC2(x);
    FUNC2(y);
    FUNC2(z);
    FUNC2(cof);
    FUNC2(yplusone);
    return r;
}
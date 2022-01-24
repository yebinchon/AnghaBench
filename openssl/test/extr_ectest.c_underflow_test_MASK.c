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
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NID_secp521r1 ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(void)
{
    BN_CTX *ctx = NULL;
    EC_GROUP *grp = NULL;
    EC_POINT *P = NULL, *Q = NULL, *R = NULL;
    BIGNUM *x1 = NULL, *y1 = NULL, *z1 = NULL, *x2 = NULL, *y2 = NULL;
    BIGNUM *k = NULL;
    int testresult = 0;
    const char *x1str =
        "1534f0077fffffe87e9adcfe000000000000000000003e05a21d2400002e031b1f4"
        "b80000c6fafa4f3c1288798d624a247b5e2ffffffffffffffefe099241900004";
    const char *p521m1 =
        "1ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
        "fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe";

    ctx = FUNC3();
    if (!FUNC17(ctx))
        return 0;

    FUNC4(ctx);
    x1 = FUNC2(ctx);
    y1 = FUNC2(ctx);
    z1 = FUNC2(ctx);
    x2 = FUNC2(ctx);
    y2 = FUNC2(ctx);
    k = FUNC2(ctx);
    if (!FUNC17(k))
        goto err;

    grp = FUNC8(NID_secp521r1);
    P = FUNC13(grp);
    Q = FUNC13(grp);
    R = FUNC13(grp);
    if (!FUNC17(grp) || !FUNC17(P) || !FUNC17(Q) || !FUNC17(R))
        goto err;

    if (!FUNC16(FUNC6(&x1, x1str), 0)
            || !FUNC16(FUNC6(&y1, p521m1), 0)
            || !FUNC16(FUNC6(&z1, p521m1), 0)
            || !FUNC16(FUNC6(&k, "02"), 0)
            || !FUNC18(FUNC14(grp, P, x1,
                                                                   y1, z1, ctx))
            || !FUNC18(FUNC12(grp, Q, NULL, P, k, ctx))
            || !FUNC18(FUNC11(grp, Q, x1, y1, ctx))
            || !FUNC18(FUNC9(grp, R, P, ctx))
            || !FUNC18(FUNC11(grp, R, x2, y2, ctx)))
        goto err;

    if (!FUNC15(FUNC5(x1, x2), 0)
            || !FUNC15(FUNC5(y1, y2), 0))
        goto err;

    testresult = 1;

 err:
    FUNC0(ctx);
    FUNC10(P);
    FUNC10(Q);
    FUNC10(R);
    FUNC7(grp);
    FUNC1(ctx);

    return testresult;
}
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
typedef  int /*<<< orphan*/  const EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  const BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC10 () ; 
 int /*<<< orphan*/  const* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(EC_GROUP *group)
{
    BIGNUM *n1 = NULL, *n2 = NULL, *order = NULL;
    EC_POINT *P = NULL, *Q = NULL, *R = NULL, *S = NULL;
    const EC_POINT *G = NULL;
    BN_CTX *ctx = NULL;
    int i = 0, r = 0;

    if (!FUNC27(n1 = FUNC5())
        || !FUNC27(n2 = FUNC5())
        || !FUNC27(order = FUNC5())
        || !FUNC27(ctx = FUNC1())
        || !FUNC27(G = FUNC11(group))
        || !FUNC27(P = FUNC22(group))
        || !FUNC27(Q = FUNC22(group))
        || !FUNC27(R = FUNC22(group))
        || !FUNC27(S = FUNC22(group)))
        goto err;

    if (!FUNC28(FUNC12(group, order, ctx))
        || !FUNC28(FUNC21(group, Q, order, NULL, NULL, ctx))
        || !FUNC28(FUNC20(group, Q))
        || !FUNC28(FUNC13(group, ctx))
        || !FUNC28(FUNC21(group, Q, order, NULL, NULL, ctx))
        || !FUNC28(FUNC20(group, Q))
        || !FUNC28(FUNC16(P, G))
        || !FUNC28(FUNC6(n1))
        || !FUNC28(FUNC21(group, Q, n1, NULL, NULL, ctx))
        || !FUNC26(0, FUNC15(group, Q, P, ctx))
        || !FUNC28(FUNC9(n1, order, n1))
        || !FUNC28(FUNC21(group, Q, n1, NULL, NULL, ctx))
        || !FUNC28(FUNC19(group, Q, ctx))
        || !FUNC26(0, FUNC15(group, Q, P, ctx)))
        goto err;

    for (i = 1; i <= 2; i++) {
        const BIGNUM *scalars[6];
        const EC_POINT *points[6];

        if (!FUNC28(FUNC8(n1, i))
            /*
             * If i == 1, P will be the predefined generator for which
             * EC_GROUP_precompute_mult has set up precomputation.
             */
            || !FUNC28(FUNC21(group, P, n1, NULL, NULL, ctx))
            || (i == 1 && !FUNC26(0, FUNC15(group, P, G, ctx)))
            || !FUNC28(FUNC6(n1))
            /* n1 = 1 - order */
            || !FUNC28(FUNC9(n1, n1, order))
            || !FUNC28(FUNC21(group, Q, NULL, P, n1, ctx))
            || !FUNC26(0, FUNC15(group, Q, P, ctx))

            /* n2 = 1 + order */
            || !FUNC28(FUNC2(n2, order, FUNC10()))
            || !FUNC28(FUNC21(group, Q, NULL, P, n2, ctx))
            || !FUNC26(0, FUNC15(group, Q, P, ctx))

            /* n2 = (1 - order) * (1 + order) = 1 - order^2 */
            || !FUNC28(FUNC4(n2, n1, n2, ctx))
            || !FUNC28(FUNC21(group, Q, NULL, P, n2, ctx))
            || !FUNC26(0, FUNC15(group, Q, P, ctx)))
            goto err;

        /* n2 = order^2 - 1 */
        FUNC7(n2, 0);
        if (!FUNC28(FUNC21(group, Q, NULL, P, n2, ctx))
            /* Add P to verify the result. */
            || !FUNC28(FUNC14(group, Q, Q, P, ctx))
            || !FUNC28(FUNC20(group, Q))

            /* Exercise EC_POINTs_mul, including corner cases. */
            || !FUNC24(FUNC20(group, P)))
            goto err;

        scalars[0] = scalars[1] = FUNC10();
        points[0]  = points[1]  = P;

        if (!FUNC28(FUNC23(group, R, NULL, 2, points, scalars, ctx))
            || !FUNC28(FUNC17(group, S, points[0], ctx))
            || !FUNC26(0, FUNC15(group, R, S, ctx)))
            goto err;

        scalars[0] = n1;
        points[0] = Q;          /* => infinity */
        scalars[1] = n2;
        points[1] = P;          /* => -P */
        scalars[2] = n1;
        points[2] = Q;          /* => infinity */
        scalars[3] = n2;
        points[3] = Q;          /* => infinity */
        scalars[4] = n1;
        points[4] = P;          /* => P */
        scalars[5] = n2;
        points[5] = Q;          /* => infinity */
        if (!FUNC28(FUNC23(group, P, NULL, 6, points, scalars, ctx))
            || !FUNC28(FUNC20(group, P)))
            goto err;
    }

    r = 1;
err:
    if (r == 0 && i != 0)
        FUNC25(i == 1 ? "allowing precomputation" :
                           "without precomputation");
    FUNC18(P);
    FUNC18(Q);
    FUNC18(R);
    FUNC18(S);
    FUNC3(n1);
    FUNC3(n2);
    FUNC3(order);
    FUNC0(ctx);
    return r;
}
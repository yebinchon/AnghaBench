#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int nid; } ;
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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 TYPE_1__* curves ; 

__attribute__((used)) static int FUNC30(int n)
{
    int ret = 0;
    int nid = curves[n].nid;
    BN_CTX *ctx = NULL;
    EC_GROUP *g1 = NULL, *g2 = NULL;
    EC_POINT *g2_gen = NULL;
    BIGNUM *g1_p = NULL, *g1_a = NULL, *g1_b = NULL, *g1_x = NULL, *g1_y = NULL,
           *g1_order = NULL, *g1_cf = NULL, *g2_cf = NULL;

    FUNC27("Curve %s cardinality test", FUNC24(nid));

    if (!FUNC28(ctx = FUNC3())
        || !FUNC28(g1 = FUNC17(nid))
        || !FUNC28(g2 = FUNC16(FUNC15(g1)))) {
        FUNC10(g1);
        FUNC10(g2);
        FUNC1(ctx);
        return 0;
    }

    FUNC4(ctx);
    g1_p = FUNC2(ctx);
    g1_a = FUNC2(ctx);
    g1_b = FUNC2(ctx);
    g1_x = FUNC2(ctx);
    g1_y = FUNC2(ctx);
    g1_order = FUNC2(ctx);
    g1_cf = FUNC2(ctx);

    if (!FUNC28(g2_cf = FUNC2(ctx))
        /* pull out the explicit curve parameters */
        || !FUNC29(FUNC14(g1, g1_p, g1_a, g1_b, ctx))
        || !FUNC29(FUNC21(g1,
                      FUNC11(g1), g1_x, g1_y, ctx))
        || !FUNC29(FUNC5(g1_order, FUNC12(g1)))
        || !FUNC29(FUNC13(g1, g1_cf, ctx))
        /* construct g2 manually with g1 parameters */
        || !FUNC29(FUNC18(g2, g1_p, g1_a, g1_b, ctx))
        || !FUNC28(g2_gen = FUNC22(g2))
        || !FUNC29(FUNC23(g2, g2_gen, g1_x, g1_y, ctx))
        /* pass NULL cofactor: lib should compute it */
        || !FUNC29(FUNC19(g2, g2_gen, g1_order, NULL))
        || !FUNC29(FUNC13(g2, g2_cf, ctx))
        || !FUNC25(g1_cf, g2_cf)
        /* pass zero cofactor: lib should compute it */
        || !FUNC29(FUNC7(g2_cf, 0))
        || !FUNC29(FUNC19(g2, g2_gen, g1_order, g2_cf))
        || !FUNC29(FUNC13(g2, g2_cf, ctx))
        || !FUNC25(g1_cf, g2_cf)
        /* negative test for invalid cofactor */
        || !FUNC29(FUNC7(g2_cf, 0))
        || !FUNC29(FUNC8(g2_cf, g2_cf, FUNC9()))
        || !FUNC26(FUNC19(g2, g2_gen, g1_order, g2_cf))
        /* negative test for NULL order */
        || !FUNC26(FUNC19(g2, g2_gen, NULL, NULL))
        /* negative test for zero order */
        || !FUNC29(FUNC7(g1_order, 0))
        || !FUNC26(FUNC19(g2, g2_gen, g1_order, NULL))
        /* negative test for negative order */
        || !FUNC29(FUNC7(g2_cf, 0))
        || !FUNC29(FUNC8(g2_cf, g2_cf, FUNC9()))
        || !FUNC26(FUNC19(g2, g2_gen, g1_order, NULL))
        /* negative test for too large order */
        || !FUNC29(FUNC6(g1_order, g1_p, 2))
        || !FUNC26(FUNC19(g2, g2_gen, g1_order, NULL)))
        goto err;
    ret = 1;
 err:
    FUNC20(g2_gen);
    FUNC10(g1);
    FUNC10(g2);
    FUNC0(ctx);
    FUNC1(ctx);
    return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* meth; } ;
struct TYPE_13__ {int flags; int /*<<< orphan*/  (* group_get_curve ) (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int EC_FLAGS_CUSTOM_CURVE ; 
 int /*<<< orphan*/  const* FUNC7 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  const* FUNC9 (TYPE_2__ const*) ; 
 scalar_t__ FUNC10 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__ const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC16(const EC_GROUP *a, const EC_GROUP *b, BN_CTX *ctx)
{
    int r = 0;
    BIGNUM *a1, *a2, *a3, *b1, *b2, *b3;
#ifndef FIPS_MODE
    BN_CTX *ctx_new = NULL;

    if (ctx == NULL)
        ctx_new = ctx = FUNC3();
#endif
    if (ctx == NULL)
        return -1;

    /* compare the field types */
    if (FUNC12(FUNC11(a)) !=
        FUNC12(FUNC11(b)))
        return 1;
    /* compare the curve name (if present in both) */
    if (FUNC10(a) && FUNC10(b) &&
        FUNC10(a) != FUNC10(b))
        return 1;
    if (a->meth->flags & EC_FLAGS_CUSTOM_CURVE)
        return 0;

    FUNC4(ctx);
    a1 = FUNC2(ctx);
    a2 = FUNC2(ctx);
    a3 = FUNC2(ctx);
    b1 = FUNC2(ctx);
    b2 = FUNC2(ctx);
    b3 = FUNC2(ctx);
    if (b3 == NULL) {
        FUNC0(ctx);
#ifndef FIPS_MODE
        FUNC1(ctx_new);
#endif
        return -1;
    }

    /*
     * XXX This approach assumes that the external representation of curves
     * over the same field type is the same.
     */
    if (!a->meth->group_get_curve(a, a1, a2, a3, ctx) ||
        !b->meth->group_get_curve(b, b1, b2, b3, ctx))
        r = 1;

    /* return 1 if the curve parameters are different */
    if (r || FUNC5(a1, b1) != 0 || FUNC5(a2, b2) != 0 || FUNC5(a3, b3) != 0)
        r = 1;

    /* XXX EC_POINT_cmp() assumes that the methods are equal */
    /* return 1 if the generators are different */
    if (r || FUNC13(a, FUNC8(a),
                          FUNC8(b), ctx) != 0)
        r = 1;

    if (!r) {
        const BIGNUM *ao, *bo, *ac, *bc;
        /* compare the orders */
        ao = FUNC9(a);
        bo = FUNC9(b);
        if (ao == NULL || bo == NULL) {
            /* return an error if either order is NULL */
            r = -1;
            goto end;
        }
        if (FUNC5(ao, bo) != 0) {
            /* return 1 if orders are different */
            r = 1;
            goto end;
        }
        /*
         * It gets here if the curve parameters and generator matched.
         * Now check the optional cofactors (if both are present).
         */
        ac = FUNC7(a);
        bc = FUNC7(b);
        /* Returns 1 (mismatch) if both cofactors are specified and different */
        if (!FUNC6(ac) && !FUNC6(bc) && FUNC5(ac, bc) != 0)
            r = 1;
        /* Returns 0 if the parameters matched */
    }
end:
    FUNC0(ctx);
#ifndef FIPS_MODE
    FUNC1(ctx_new);
#endif
    return r;
}
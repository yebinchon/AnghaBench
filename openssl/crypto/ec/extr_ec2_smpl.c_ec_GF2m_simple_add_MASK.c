#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {TYPE_1__* meth; int /*<<< orphan*/ * a; } ;
struct TYPE_24__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; scalar_t__ Z_is_one; } ;
struct TYPE_23__ {int /*<<< orphan*/  (* field_mul ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* field_sqr ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* field_div ) (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ EC_POINT ;
typedef  TYPE_3__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__ const*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_3__ const*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__ const*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC19(const EC_GROUP *group, EC_POINT *r, const EC_POINT *a,
                       const EC_POINT *b, BN_CTX *ctx)
{
    BIGNUM *x0, *y0, *x1, *y1, *x2, *y2, *s, *t;
    int ret = 0;
#ifndef FIPS_MODE
    BN_CTX *new_ctx = NULL;
#endif

    if (FUNC11(group, a)) {
        if (!FUNC9(r, b))
            return 0;
        return 1;
    }

    if (FUNC11(group, b)) {
        if (!FUNC9(r, a))
            return 0;
        return 1;
    }

#ifndef FIPS_MODE
    if (ctx == NULL) {
        ctx = new_ctx = FUNC3();
        if (ctx == NULL)
            return 0;
    }
#endif

    FUNC4(ctx);
    x0 = FUNC2(ctx);
    y0 = FUNC2(ctx);
    x1 = FUNC2(ctx);
    y1 = FUNC2(ctx);
    x2 = FUNC2(ctx);
    y2 = FUNC2(ctx);
    s = FUNC2(ctx);
    t = FUNC2(ctx);
    if (t == NULL)
        goto err;

    if (a->Z_is_one) {
        if (!FUNC7(x0, a->X))
            goto err;
        if (!FUNC7(y0, a->Y))
            goto err;
    } else {
        if (!FUNC10(group, a, x0, y0, ctx))
            goto err;
    }
    if (b->Z_is_one) {
        if (!FUNC7(x1, b->X))
            goto err;
        if (!FUNC7(y1, b->Y))
            goto err;
    } else {
        if (!FUNC10(group, b, x1, y1, ctx))
            goto err;
    }

    if (FUNC6(x0, x1)) {
        if (!FUNC5(t, x0, x1))
            goto err;
        if (!FUNC5(s, y0, y1))
            goto err;
        if (!group->meth->field_div(group, s, s, t, ctx))
            goto err;
        if (!group->meth->field_sqr(group, x2, s, ctx))
            goto err;
        if (!FUNC5(x2, x2, group->a))
            goto err;
        if (!FUNC5(x2, x2, s))
            goto err;
        if (!FUNC5(x2, x2, t))
            goto err;
    } else {
        if (FUNC6(y0, y1) || FUNC8(x1)) {
            if (!FUNC13(group, r))
                goto err;
            ret = 1;
            goto err;
        }
        if (!group->meth->field_div(group, s, y1, x1, ctx))
            goto err;
        if (!FUNC5(s, s, x1))
            goto err;

        if (!group->meth->field_sqr(group, x2, s, ctx))
            goto err;
        if (!FUNC5(x2, x2, s))
            goto err;
        if (!FUNC5(x2, x2, group->a))
            goto err;
    }

    if (!FUNC5(y2, x1, x2))
        goto err;
    if (!group->meth->field_mul(group, y2, y2, s, ctx))
        goto err;
    if (!FUNC5(y2, y2, x2))
        goto err;
    if (!FUNC5(y2, y2, y1))
        goto err;

    if (!FUNC12(group, r, x2, y2, ctx))
        goto err;

    ret = 1;

 err:
    FUNC0(ctx);
#ifndef FIPS_MODE
    FUNC1(new_ctx);
#endif
    return ret;
}
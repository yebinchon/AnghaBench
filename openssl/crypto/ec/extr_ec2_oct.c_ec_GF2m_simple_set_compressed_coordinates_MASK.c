#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* meth; int /*<<< orphan*/  poly; int /*<<< orphan*/ * a; int /*<<< orphan*/  b; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* field_mul ) (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* field_div ) (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* field_sqr ) (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ BN_R_NO_SOLUTION ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_INVALID_COMPRESSED_POINT ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (unsigned long) ; 
 scalar_t__ FUNC14 (unsigned long) ; 
 scalar_t__ ERR_LIB_BN ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  FUNC15 () ; 
 unsigned long FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC20(const EC_GROUP *group,
                                              EC_POINT *point,
                                              const BIGNUM *x_, int y_bit,
                                              BN_CTX *ctx)
{
    BIGNUM *tmp, *x, *y, *z;
    int ret = 0, z0;
#ifndef FIPS_MODE
    BN_CTX *new_ctx = NULL;

    /* clear error queue */
    FUNC15();

    if (ctx == NULL) {
        ctx = new_ctx = FUNC3();
        if (ctx == NULL)
            return 0;
    }
#endif

    y_bit = (y_bit != 0) ? 1 : 0;

    FUNC4(ctx);
    tmp = FUNC2(ctx);
    x = FUNC2(ctx);
    y = FUNC2(ctx);
    z = FUNC2(ctx);
    if (z == NULL)
        goto err;

    if (!FUNC6(x, x_, group->poly))
        goto err;
    if (FUNC10(x)) {
        if (!FUNC8(y, group->b, group->poly, ctx))
            goto err;
    } else {
        if (!group->meth->field_sqr(group, tmp, x, ctx))
            goto err;
        if (!group->meth->field_div(group, tmp, group->b, tmp, ctx))
            goto err;
        if (!FUNC5(tmp, group->a, tmp))
            goto err;
        if (!FUNC5(tmp, x, tmp))
            goto err;
        if (!FUNC7(z, tmp, group->poly, ctx)) {
#ifndef FIPS_MODE
            unsigned long err = FUNC16();

            if (FUNC13(err) == ERR_LIB_BN
                && FUNC14(err) == BN_R_NO_SOLUTION) {
                FUNC15();
                FUNC12(EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES,
                      EC_R_INVALID_COMPRESSED_POINT);
            } else
#endif
            {
                FUNC12(EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES,
                      ERR_R_BN_LIB);
            }
            goto err;
        }
        z0 = (FUNC9(z)) ? 1 : 0;
        if (!group->meth->field_mul(group, y, x, z, ctx))
            goto err;
        if (z0 != y_bit) {
            if (!FUNC5(y, y, x))
                goto err;
        }
    }

    if (!FUNC11(group, point, x, y, ctx))
        goto err;

    ret = 1;

 err:
    FUNC0(ctx);
#ifndef FIPS_MODE
    FUNC1(new_ctx);
#endif
    return ret;
}
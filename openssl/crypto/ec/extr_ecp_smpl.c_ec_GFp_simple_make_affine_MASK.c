#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  libctx; } ;
struct TYPE_11__ {scalar_t__ Z_is_one; } ;
typedef  TYPE_1__ EC_POINT ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_GFP_SIMPLE_MAKE_AFFINE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__ const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 

int FUNC9(const EC_GROUP *group, EC_POINT *point,
                              BN_CTX *ctx)
{
    BN_CTX *new_ctx = NULL;
    BIGNUM *x, *y;
    int ret = 0;

    if (point->Z_is_one || FUNC6(group, point))
        return 1;

    if (ctx == NULL) {
        ctx = new_ctx = FUNC3(group->libctx);
        if (ctx == NULL)
            return 0;
    }

    FUNC4(ctx);
    x = FUNC2(ctx);
    y = FUNC2(ctx);
    if (y == NULL)
        goto err;

    if (!FUNC5(group, point, x, y, ctx))
        goto err;
    if (!FUNC7(group, point, x, y, ctx))
        goto err;
    if (!point->Z_is_one) {
        FUNC8(EC_F_EC_GFP_SIMPLE_MAKE_AFFINE, ERR_R_INTERNAL_ERROR);
        goto err;
    }

    ret = 1;

 err:
    FUNC0(ctx);
    FUNC1(new_ctx);
    return ret;
}
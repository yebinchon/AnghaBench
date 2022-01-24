#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * Y; int /*<<< orphan*/ * X; scalar_t__ Z_is_one; } ;
typedef  TYPE_1__ EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,TYPE_1__ const*) ; 

int FUNC8(const EC_GROUP *group, const EC_POINT *a,
                       const EC_POINT *b, BN_CTX *ctx)
{
    BIGNUM *aX, *aY, *bX, *bY;
    int ret = -1;
#ifndef FIPS_MODE
    BN_CTX *new_ctx = NULL;
#endif

    if (FUNC7(group, a)) {
        return FUNC7(group, b) ? 0 : 1;
    }

    if (FUNC7(group, b))
        return 1;

    if (a->Z_is_one && b->Z_is_one) {
        return ((FUNC5(a->X, b->X) == 0) && FUNC5(a->Y, b->Y) == 0) ? 0 : 1;
    }

#ifndef FIPS_MODE
    if (ctx == NULL) {
        ctx = new_ctx = FUNC3();
        if (ctx == NULL)
            return -1;
    }
#endif

    FUNC4(ctx);
    aX = FUNC2(ctx);
    aY = FUNC2(ctx);
    bX = FUNC2(ctx);
    bY = FUNC2(ctx);
    if (bY == NULL)
        goto err;

    if (!FUNC6(group, a, aX, aY, ctx))
        goto err;
    if (!FUNC6(group, b, bX, bY, ctx))
        goto err;
    ret = ((FUNC5(aX, bX) == 0) && FUNC5(aY, bY) == 0) ? 0 : 1;

 err:
    FUNC0(ctx);
#ifndef FIPS_MODE
    FUNC1(new_ctx);
#endif
    return ret;
}
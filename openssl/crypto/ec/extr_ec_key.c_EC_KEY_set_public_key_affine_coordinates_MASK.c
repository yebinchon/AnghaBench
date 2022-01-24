#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * group; int /*<<< orphan*/  libctx; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_1__ EC_KEY ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_COORDINATES_OUT_OF_RANGE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 

int FUNC13(EC_KEY *key, BIGNUM *x,
                                             BIGNUM *y)
{
    BN_CTX *ctx = NULL;
    BIGNUM *tx, *ty;
    EC_POINT *point = NULL;
    int ok = 0;

    if (key == NULL || key->group == NULL || x == NULL || y == NULL) {
        FUNC12(EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES,
              ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    ctx = FUNC3(key->libctx);
    if (ctx == NULL)
        return 0;

    FUNC4(ctx);
    point = FUNC10(key->group);

    if (point == NULL)
        goto err;

    tx = FUNC2(ctx);
    ty = FUNC2(ctx);
    if (ty == NULL)
        goto err;

    if (!FUNC11(key->group, point, x, y, ctx))
        goto err;
    if (!FUNC9(key->group, point, tx, ty, ctx))
        goto err;

    /*
     * Check if retrieved coordinates match originals. The range check is done
     * inside EC_KEY_check_key().
     */
    if (FUNC5(x, tx) || FUNC5(y, ty)) {
        FUNC12(EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES,
              EC_R_COORDINATES_OUT_OF_RANGE);
        goto err;
    }

    if (!FUNC7(key, point))
        goto err;

    if (FUNC6(key) == 0)
        goto err;

    ok = 1;

 err:
    FUNC0(ctx);
    FUNC1(ctx);
    FUNC8(point);
    return ok;

}
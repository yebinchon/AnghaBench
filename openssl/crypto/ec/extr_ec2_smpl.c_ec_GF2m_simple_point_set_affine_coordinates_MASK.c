#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int Z_is_one; int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC2 () ; 
 int /*<<< orphan*/  EC_F_EC_GF2M_SIMPLE_POINT_SET_AFFINE_COORDINATES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 

int FUNC4(const EC_GROUP *group,
                                                EC_POINT *point,
                                                const BIGNUM *x,
                                                const BIGNUM *y, BN_CTX *ctx)
{
    int ret = 0;
    if (x == NULL || y == NULL) {
        FUNC3(EC_F_EC_GF2M_SIMPLE_POINT_SET_AFFINE_COORDINATES,
              ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    if (!FUNC0(point->X, x))
        goto err;
    FUNC1(point->X, 0);
    if (!FUNC0(point->Y, y))
        goto err;
    FUNC1(point->Y, 0);
    if (!FUNC0(point->Z, FUNC2()))
        goto err;
    FUNC1(point->Z, 0);
    point->Z_is_one = 1;
    ret = 1;

 err:
    return ret;
}
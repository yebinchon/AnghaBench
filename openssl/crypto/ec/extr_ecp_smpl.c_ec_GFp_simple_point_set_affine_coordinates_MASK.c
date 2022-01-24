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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EC_F_EC_GFP_SIMPLE_POINT_SET_AFFINE_COORDINATES ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 

int FUNC3(const EC_GROUP *group,
                                               EC_POINT *point,
                                               const BIGNUM *x,
                                               const BIGNUM *y, BN_CTX *ctx)
{
    if (x == NULL || y == NULL) {
        /*
         * unlike for projective coordinates, we do not tolerate this
         */
        FUNC2(EC_F_EC_GFP_SIMPLE_POINT_SET_AFFINE_COORDINATES,
              ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    return FUNC1(group, point, x, y,
                                                    FUNC0(), ctx);
}
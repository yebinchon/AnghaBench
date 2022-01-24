#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widefelem ;
typedef  int /*<<< orphan*/  felem ;
struct TYPE_4__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_F_EC_GFP_NISTP224_POINT_GET_AFFINE_COORDINATES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  EC_R_POINT_AT_INFINITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(const EC_GROUP *group,
                                                 const EC_POINT *point,
                                                 BIGNUM *x, BIGNUM *y,
                                                 BN_CTX *ctx)
{
    felem z1, z2, x_in, y_in, x_out, y_out;
    widefelem tmp;

    if (FUNC1(group, point)) {
        FUNC2(EC_F_EC_GFP_NISTP224_POINT_GET_AFFINE_COORDINATES,
              EC_R_POINT_AT_INFINITY);
        return 0;
    }
    if ((!FUNC0(x_in, point->X)) || (!FUNC0(y_in, point->Y)) ||
        (!FUNC0(z1, point->Z)))
        return 0;
    FUNC4(z2, z1);
    FUNC7(tmp, z2);
    FUNC6(z1, tmp);
    FUNC5(tmp, x_in, z1);
    FUNC6(x_in, tmp);
    FUNC3(x_out, x_in);
    if (x != NULL) {
        if (!FUNC8(x, x_out)) {
            FUNC2(EC_F_EC_GFP_NISTP224_POINT_GET_AFFINE_COORDINATES,
                  ERR_R_BN_LIB);
            return 0;
        }
    }
    FUNC5(tmp, z1, z2);
    FUNC6(z1, tmp);
    FUNC5(tmp, y_in, z1);
    FUNC6(y_in, tmp);
    FUNC3(y_out, y_in);
    if (y != NULL) {
        if (!FUNC8(y, y_out)) {
            FUNC2(EC_F_EC_GFP_NISTP224_POINT_GET_AFFINE_COORDINATES,
                  ERR_R_BN_LIB);
            return 0;
        }
    }
    return 1;
}
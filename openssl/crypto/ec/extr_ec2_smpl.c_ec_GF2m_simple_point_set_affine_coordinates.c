
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Z_is_one; int Z; int Y; int X; } ;
typedef TYPE_1__ EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_copy (int ,int const*) ;
 int BN_set_negative (int ,int ) ;
 int const* BN_value_one () ;
 int EC_F_EC_GF2M_SIMPLE_POINT_SET_AFFINE_COORDINATES ;
 int ECerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;

int ec_GF2m_simple_point_set_affine_coordinates(const EC_GROUP *group,
                                                EC_POINT *point,
                                                const BIGNUM *x,
                                                const BIGNUM *y, BN_CTX *ctx)
{
    int ret = 0;
    if (x == ((void*)0) || y == ((void*)0)) {
        ECerr(EC_F_EC_GF2M_SIMPLE_POINT_SET_AFFINE_COORDINATES,
              ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    if (!BN_copy(point->X, x))
        goto err;
    BN_set_negative(point->X, 0);
    if (!BN_copy(point->Y, y))
        goto err;
    BN_set_negative(point->Y, 0);
    if (!BN_copy(point->Z, BN_value_one()))
        goto err;
    BN_set_negative(point->Z, 0);
    point->Z_is_one = 1;
    ret = 1;

 err:
    return ret;
}

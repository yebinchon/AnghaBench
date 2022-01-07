
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Y; int X; int Z; } ;
typedef TYPE_1__ EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 scalar_t__ BN_cmp (int ,int ) ;
 int BN_copy (int *,int ) ;
 int BN_set_negative (int *,int ) ;
 int BN_value_one () ;
 int EC_F_EC_GF2M_SIMPLE_POINT_GET_AFFINE_COORDINATES ;
 scalar_t__ EC_POINT_is_at_infinity (int const*,TYPE_1__ const*) ;
 int EC_R_POINT_AT_INFINITY ;
 int ECerr (int ,int ) ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;

int ec_GF2m_simple_point_get_affine_coordinates(const EC_GROUP *group,
                                                const EC_POINT *point,
                                                BIGNUM *x, BIGNUM *y,
                                                BN_CTX *ctx)
{
    int ret = 0;

    if (EC_POINT_is_at_infinity(group, point)) {
        ECerr(EC_F_EC_GF2M_SIMPLE_POINT_GET_AFFINE_COORDINATES,
              EC_R_POINT_AT_INFINITY);
        return 0;
    }

    if (BN_cmp(point->Z, BN_value_one())) {
        ECerr(EC_F_EC_GF2M_SIMPLE_POINT_GET_AFFINE_COORDINATES,
              ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }
    if (x != ((void*)0)) {
        if (!BN_copy(x, point->X))
            goto err;
        BN_set_negative(x, 0);
    }
    if (y != ((void*)0)) {
        if (!BN_copy(y, point->Y))
            goto err;
        BN_set_negative(y, 0);
    }
    ret = 1;

 err:
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int widefelem ;
typedef int felem ;
struct TYPE_4__ {int Z; int Y; int X; } ;
typedef TYPE_1__ EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_to_felem (int ,int ) ;
 int EC_F_EC_GFP_NISTP224_POINT_GET_AFFINE_COORDINATES ;
 scalar_t__ EC_POINT_is_at_infinity (int const*,TYPE_1__ const*) ;
 int EC_R_POINT_AT_INFINITY ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int felem_contract (int ,int ) ;
 int felem_inv (int ,int ) ;
 int felem_mul (int ,int ,int ) ;
 int felem_reduce (int ,int ) ;
 int felem_square (int ,int ) ;
 int felem_to_BN (int *,int ) ;

int ec_GFp_nistp224_point_get_affine_coordinates(const EC_GROUP *group,
                                                 const EC_POINT *point,
                                                 BIGNUM *x, BIGNUM *y,
                                                 BN_CTX *ctx)
{
    felem z1, z2, x_in, y_in, x_out, y_out;
    widefelem tmp;

    if (EC_POINT_is_at_infinity(group, point)) {
        ECerr(EC_F_EC_GFP_NISTP224_POINT_GET_AFFINE_COORDINATES,
              EC_R_POINT_AT_INFINITY);
        return 0;
    }
    if ((!BN_to_felem(x_in, point->X)) || (!BN_to_felem(y_in, point->Y)) ||
        (!BN_to_felem(z1, point->Z)))
        return 0;
    felem_inv(z2, z1);
    felem_square(tmp, z2);
    felem_reduce(z1, tmp);
    felem_mul(tmp, x_in, z1);
    felem_reduce(x_in, tmp);
    felem_contract(x_out, x_in);
    if (x != ((void*)0)) {
        if (!felem_to_BN(x, x_out)) {
            ECerr(EC_F_EC_GFP_NISTP224_POINT_GET_AFFINE_COORDINATES,
                  ERR_R_BN_LIB);
            return 0;
        }
    }
    felem_mul(tmp, z1, z2);
    felem_reduce(z1, tmp);
    felem_mul(tmp, y_in, z1);
    felem_reduce(y_in, tmp);
    felem_contract(y_out, y_in);
    if (y != ((void*)0)) {
        if (!felem_to_BN(y, y_out)) {
            ECerr(EC_F_EC_GFP_NISTP224_POINT_GET_AFFINE_COORDINATES,
                  ERR_R_BN_LIB);
            return 0;
        }
    }
    return 1;
}

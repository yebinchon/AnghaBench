
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_value_one () ;
 int EC_F_EC_GFP_SIMPLE_POINT_SET_AFFINE_COORDINATES ;
 int EC_POINT_set_Jprojective_coordinates_GFp (int const*,int *,int const*,int const*,int ,int *) ;
 int ECerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;

int ec_GFp_simple_point_set_affine_coordinates(const EC_GROUP *group,
                                               EC_POINT *point,
                                               const BIGNUM *x,
                                               const BIGNUM *y, BN_CTX *ctx)
{
    if (x == ((void*)0) || y == ((void*)0)) {



        ECerr(EC_F_EC_GFP_SIMPLE_POINT_SET_AFFINE_COORDINATES,
              ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    return EC_POINT_set_Jprojective_coordinates_GFp(group, point, x, y,
                                                    BN_value_one(), ctx);
}

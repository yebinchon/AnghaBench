
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* meth; } ;
struct TYPE_7__ {int (* point_set_affine_coordinates ) (TYPE_2__ const*,int *,int const*,int const*,int *) ;} ;
typedef int EC_POINT ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int EC_F_EC_POINT_SET_AFFINE_COORDINATES ;
 scalar_t__ EC_POINT_is_on_curve (TYPE_2__ const*,int *,int *) ;
 int EC_R_INCOMPATIBLE_OBJECTS ;
 int EC_R_POINT_IS_NOT_ON_CURVE ;
 int ECerr (int ,int ) ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int ec_point_is_compat (int *,TYPE_2__ const*) ;
 int stub1 (TYPE_2__ const*,int *,int const*,int const*,int *) ;

int EC_POINT_set_affine_coordinates(const EC_GROUP *group, EC_POINT *point,
                                    const BIGNUM *x, const BIGNUM *y,
                                    BN_CTX *ctx)
{
    if (group->meth->point_set_affine_coordinates == ((void*)0)) {
        ECerr(EC_F_EC_POINT_SET_AFFINE_COORDINATES,
              ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }
    if (!ec_point_is_compat(point, group)) {
        ECerr(EC_F_EC_POINT_SET_AFFINE_COORDINATES, EC_R_INCOMPATIBLE_OBJECTS);
        return 0;
    }
    if (!group->meth->point_set_affine_coordinates(group, point, x, y, ctx))
        return 0;

    if (EC_POINT_is_on_curve(group, point, ctx) <= 0) {
        ECerr(EC_F_EC_POINT_SET_AFFINE_COORDINATES, EC_R_POINT_IS_NOT_ON_CURVE);
        return 0;
    }
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* meth; } ;
struct TYPE_8__ {int (* mul ) (TYPE_2__ const*,int const*,int const*,size_t,int const**,int const**,int *) ;} ;
typedef int const EC_POINT ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_secure_new () ;
 int EC_F_EC_POINTS_MUL ;
 int EC_POINT_set_to_infinity (TYPE_2__ const*,int const*) ;
 int EC_R_INCOMPATIBLE_OBJECTS ;
 int ECerr (int ,int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int ec_point_is_compat (int const*,TYPE_2__ const*) ;
 int ec_wNAF_mul (TYPE_2__ const*,int const*,int const*,size_t,int const**,int const**,int *) ;
 int stub1 (TYPE_2__ const*,int const*,int const*,size_t,int const**,int const**,int *) ;

int EC_POINTs_mul(const EC_GROUP *group, EC_POINT *r, const BIGNUM *scalar,
                  size_t num, const EC_POINT *points[],
                  const BIGNUM *scalars[], BN_CTX *ctx)
{
    int ret = 0;
    size_t i = 0;

    BN_CTX *new_ctx = ((void*)0);

    if (ctx == ((void*)0))
        ctx = new_ctx = BN_CTX_secure_new();

    if (ctx == ((void*)0)) {
        ECerr(EC_F_EC_POINTS_MUL, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if ((scalar == ((void*)0)) && (num == 0)) {
        return EC_POINT_set_to_infinity(group, r);
    }

    if (!ec_point_is_compat(r, group)) {
        ECerr(EC_F_EC_POINTS_MUL, EC_R_INCOMPATIBLE_OBJECTS);
        return 0;
    }
    for (i = 0; i < num; i++) {
        if (!ec_point_is_compat(points[i], group)) {
            ECerr(EC_F_EC_POINTS_MUL, EC_R_INCOMPATIBLE_OBJECTS);
            return 0;
        }
    }

    if (group->meth->mul != ((void*)0))
        ret = group->meth->mul(group, r, scalar, num, points, scalars, ctx);
    else

        ret = ec_wNAF_mul(group, r, scalar, num, points, scalars, ctx);


    BN_CTX_free(new_ctx);

    return ret;
}

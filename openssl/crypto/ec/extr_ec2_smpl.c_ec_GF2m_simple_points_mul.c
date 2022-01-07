
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int cofactor; int order; } ;
typedef int EC_POINT ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 scalar_t__ BN_is_zero (int ) ;
 int EC_F_EC_GF2M_SIMPLE_POINTS_MUL ;
 int EC_POINT_add (TYPE_1__ const*,int *,int *,int *,int *) ;
 int EC_POINT_free (int *) ;
 int * EC_POINT_new (TYPE_1__ const*) ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ec_scalar_mul_ladder (TYPE_1__ const*,int *,int const*,int const*,int *) ;
 int ec_wNAF_mul (TYPE_1__ const*,int *,int const*,size_t,int const**,int const**,int *) ;

__attribute__((used)) static
int ec_GF2m_simple_points_mul(const EC_GROUP *group, EC_POINT *r,
                              const BIGNUM *scalar, size_t num,
                              const EC_POINT *points[],
                              const BIGNUM *scalars[],
                              BN_CTX *ctx)
{
    int ret = 0;
    EC_POINT *t = ((void*)0);
    if (num > 1 || BN_is_zero(group->order) || BN_is_zero(group->cofactor))
        return ec_wNAF_mul(group, r, scalar, num, points, scalars, ctx);

    if (scalar != ((void*)0) && num == 0)

        return ec_scalar_mul_ladder(group, r, scalar, ((void*)0), ctx);

    if (scalar == ((void*)0) && num == 1)

        return ec_scalar_mul_ladder(group, r, scalars[0], points[0], ctx);






    if ((t = EC_POINT_new(group)) == ((void*)0)) {
        ECerr(EC_F_EC_GF2M_SIMPLE_POINTS_MUL, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (!ec_scalar_mul_ladder(group, t, scalar, ((void*)0), ctx)
        || !ec_scalar_mul_ladder(group, r, scalars[0], points[0], ctx)
        || !EC_POINT_add(group, r, t, r, ctx))
        goto err;

    ret = 1;

 err:
    EC_POINT_free(t);
    return ret;
}

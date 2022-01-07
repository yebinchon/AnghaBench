
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* meth; int poly; int * a; int b; } ;
struct TYPE_8__ {int (* field_mul ) (TYPE_2__ const*,int *,int *,int *,int *) ;int (* field_div ) (TYPE_2__ const*,int *,int ,int *,int *) ;int (* field_sqr ) (TYPE_2__ const*,int *,int *,int *) ;} ;
typedef int EC_POINT ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_GF2m_add (int *,int *,int *) ;
 int BN_GF2m_mod_arr (int *,int const*,int ) ;
 int BN_GF2m_mod_solve_quad_arr (int *,int *,int ,int *) ;
 int BN_GF2m_mod_sqrt_arr (int *,int ,int ,int *) ;
 scalar_t__ BN_R_NO_SOLUTION ;
 scalar_t__ BN_is_odd (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES ;
 int EC_POINT_set_affine_coordinates (TYPE_2__ const*,int *,int *,int *,int *) ;
 int EC_R_INVALID_COMPRESSED_POINT ;
 int ECerr (int ,int ) ;
 scalar_t__ ERR_GET_LIB (unsigned long) ;
 scalar_t__ ERR_GET_REASON (unsigned long) ;
 scalar_t__ ERR_LIB_BN ;
 int ERR_R_BN_LIB ;
 int ERR_clear_error () ;
 unsigned long ERR_peek_last_error () ;
 int stub1 (TYPE_2__ const*,int *,int *,int *) ;
 int stub2 (TYPE_2__ const*,int *,int ,int *,int *) ;
 int stub3 (TYPE_2__ const*,int *,int *,int *,int *) ;

int ec_GF2m_simple_set_compressed_coordinates(const EC_GROUP *group,
                                              EC_POINT *point,
                                              const BIGNUM *x_, int y_bit,
                                              BN_CTX *ctx)
{
    BIGNUM *tmp, *x, *y, *z;
    int ret = 0, z0;

    BN_CTX *new_ctx = ((void*)0);


    ERR_clear_error();

    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new();
        if (ctx == ((void*)0))
            return 0;
    }


    y_bit = (y_bit != 0) ? 1 : 0;

    BN_CTX_start(ctx);
    tmp = BN_CTX_get(ctx);
    x = BN_CTX_get(ctx);
    y = BN_CTX_get(ctx);
    z = BN_CTX_get(ctx);
    if (z == ((void*)0))
        goto err;

    if (!BN_GF2m_mod_arr(x, x_, group->poly))
        goto err;
    if (BN_is_zero(x)) {
        if (!BN_GF2m_mod_sqrt_arr(y, group->b, group->poly, ctx))
            goto err;
    } else {
        if (!group->meth->field_sqr(group, tmp, x, ctx))
            goto err;
        if (!group->meth->field_div(group, tmp, group->b, tmp, ctx))
            goto err;
        if (!BN_GF2m_add(tmp, group->a, tmp))
            goto err;
        if (!BN_GF2m_add(tmp, x, tmp))
            goto err;
        if (!BN_GF2m_mod_solve_quad_arr(z, tmp, group->poly, ctx)) {

            unsigned long err = ERR_peek_last_error();

            if (ERR_GET_LIB(err) == ERR_LIB_BN
                && ERR_GET_REASON(err) == BN_R_NO_SOLUTION) {
                ERR_clear_error();
                ECerr(EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES,
                      EC_R_INVALID_COMPRESSED_POINT);
            } else

            {
                ECerr(EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES,
                      ERR_R_BN_LIB);
            }
            goto err;
        }
        z0 = (BN_is_odd(z)) ? 1 : 0;
        if (!group->meth->field_mul(group, y, x, z, ctx))
            goto err;
        if (z0 != y_bit) {
            if (!BN_GF2m_add(y, y, x))
                goto err;
        }
    }

    if (!EC_POINT_set_affine_coordinates(group, point, x, y, ctx))
        goto err;

    ret = 1;

 err:
    BN_CTX_end(ctx);

    BN_CTX_free(new_ctx);

    return ret;
}

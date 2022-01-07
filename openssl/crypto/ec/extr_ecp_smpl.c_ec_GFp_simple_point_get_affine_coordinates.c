
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {TYPE_1__* meth; int field; int libctx; } ;
struct TYPE_17__ {int * Y; int * X; int * Z; } ;
struct TYPE_16__ {scalar_t__ field_encode; int (* field_mul ) (TYPE_3__ const*,int *,int *,int *,int *) ;int (* field_sqr ) (TYPE_3__ const*,int *,int *,int *) ;int (* field_inv ) (TYPE_3__ const*,int *,int const*,int *) ;int (* field_decode ) (TYPE_3__ const*,int *,int *,int *) ;} ;
typedef TYPE_2__ EC_POINT ;
typedef TYPE_3__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new_ex (int ) ;
 int BN_CTX_start (int *) ;
 int BN_copy (int *,int *) ;
 scalar_t__ BN_is_one (int const*) ;
 int BN_mod_mul (int *,int *,int *,int ,int *) ;
 int BN_mod_sqr (int *,int *,int ,int *) ;
 int EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES ;
 scalar_t__ EC_POINT_is_at_infinity (TYPE_3__ const*,TYPE_2__ const*) ;
 int EC_R_POINT_AT_INFINITY ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int stub1 (TYPE_3__ const*,int *,int *,int *) ;
 int stub2 (TYPE_3__ const*,int *,int *,int *) ;
 int stub3 (TYPE_3__ const*,int *,int *,int *) ;
 int stub4 (TYPE_3__ const*,int *,int const*,int *) ;
 int stub5 (TYPE_3__ const*,int *,int *,int *) ;
 int stub6 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub7 (TYPE_3__ const*,int *,int *,int *,int *) ;
 int stub8 (TYPE_3__ const*,int *,int *,int *,int *) ;

int ec_GFp_simple_point_get_affine_coordinates(const EC_GROUP *group,
                                               const EC_POINT *point,
                                               BIGNUM *x, BIGNUM *y,
                                               BN_CTX *ctx)
{
    BN_CTX *new_ctx = ((void*)0);
    BIGNUM *Z, *Z_1, *Z_2, *Z_3;
    const BIGNUM *Z_;
    int ret = 0;

    if (EC_POINT_is_at_infinity(group, point)) {
        ECerr(EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES,
              EC_R_POINT_AT_INFINITY);
        return 0;
    }

    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new_ex(group->libctx);
        if (ctx == ((void*)0))
            return 0;
    }

    BN_CTX_start(ctx);
    Z = BN_CTX_get(ctx);
    Z_1 = BN_CTX_get(ctx);
    Z_2 = BN_CTX_get(ctx);
    Z_3 = BN_CTX_get(ctx);
    if (Z_3 == ((void*)0))
        goto err;



    if (group->meth->field_decode) {
        if (!group->meth->field_decode(group, Z, point->Z, ctx))
            goto err;
        Z_ = Z;
    } else {
        Z_ = point->Z;
    }

    if (BN_is_one(Z_)) {
        if (group->meth->field_decode) {
            if (x != ((void*)0)) {
                if (!group->meth->field_decode(group, x, point->X, ctx))
                    goto err;
            }
            if (y != ((void*)0)) {
                if (!group->meth->field_decode(group, y, point->Y, ctx))
                    goto err;
            }
        } else {
            if (x != ((void*)0)) {
                if (!BN_copy(x, point->X))
                    goto err;
            }
            if (y != ((void*)0)) {
                if (!BN_copy(y, point->Y))
                    goto err;
            }
        }
    } else {
        if (!group->meth->field_inv(group, Z_1, Z_, ctx)) {
            ECerr(EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES,
                  ERR_R_BN_LIB);
            goto err;
        }

        if (group->meth->field_encode == 0) {

            if (!group->meth->field_sqr(group, Z_2, Z_1, ctx))
                goto err;
        } else {
            if (!BN_mod_sqr(Z_2, Z_1, group->field, ctx))
                goto err;
        }

        if (x != ((void*)0)) {




            if (!group->meth->field_mul(group, x, point->X, Z_2, ctx))
                goto err;
        }

        if (y != ((void*)0)) {
            if (group->meth->field_encode == 0) {



                if (!group->meth->field_mul(group, Z_3, Z_2, Z_1, ctx))
                    goto err;
            } else {
                if (!BN_mod_mul(Z_3, Z_2, Z_1, group->field, ctx))
                    goto err;
            }





            if (!group->meth->field_mul(group, y, point->Y, Z_3, ctx))
                goto err;
        }
    }

    ret = 1;

 err:
    BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return ret;
}

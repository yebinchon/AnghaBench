
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * group; int libctx; } ;
typedef int EC_POINT ;
typedef TYPE_1__ EC_KEY ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new_ex (int ) ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_cmp (int *,int *) ;
 int EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES ;
 scalar_t__ EC_KEY_check_key (TYPE_1__*) ;
 int EC_KEY_set_public_key (TYPE_1__*,int *) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_get_affine_coordinates (int *,int *,int *,int *,int *) ;
 int * EC_POINT_new (int *) ;
 int EC_POINT_set_affine_coordinates (int *,int *,int *,int *,int *) ;
 int EC_R_COORDINATES_OUT_OF_RANGE ;
 int ECerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;

int EC_KEY_set_public_key_affine_coordinates(EC_KEY *key, BIGNUM *x,
                                             BIGNUM *y)
{
    BN_CTX *ctx = ((void*)0);
    BIGNUM *tx, *ty;
    EC_POINT *point = ((void*)0);
    int ok = 0;

    if (key == ((void*)0) || key->group == ((void*)0) || x == ((void*)0) || y == ((void*)0)) {
        ECerr(EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES,
              ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    ctx = BN_CTX_new_ex(key->libctx);
    if (ctx == ((void*)0))
        return 0;

    BN_CTX_start(ctx);
    point = EC_POINT_new(key->group);

    if (point == ((void*)0))
        goto err;

    tx = BN_CTX_get(ctx);
    ty = BN_CTX_get(ctx);
    if (ty == ((void*)0))
        goto err;

    if (!EC_POINT_set_affine_coordinates(key->group, point, x, y, ctx))
        goto err;
    if (!EC_POINT_get_affine_coordinates(key->group, point, tx, ty, ctx))
        goto err;





    if (BN_cmp(x, tx) || BN_cmp(y, ty)) {
        ECerr(EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES,
              EC_R_COORDINATES_OUT_OF_RANGE);
        goto err;
    }

    if (!EC_KEY_set_public_key(key, point))
        goto err;

    if (EC_KEY_check_key(key) == 0)
        goto err;

    ok = 1;

 err:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    EC_POINT_free(point);
    return ok;

}

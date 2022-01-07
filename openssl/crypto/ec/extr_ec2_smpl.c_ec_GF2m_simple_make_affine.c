
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Z_is_one; int Z; int Y; int X; } ;
typedef TYPE_1__ EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_copy (int ,int *) ;
 int BN_one (int ) ;
 int EC_POINT_get_affine_coordinates (int const*,TYPE_1__*,int *,int *,int *) ;
 scalar_t__ EC_POINT_is_at_infinity (int const*,TYPE_1__*) ;

int ec_GF2m_simple_make_affine(const EC_GROUP *group, EC_POINT *point,
                               BN_CTX *ctx)
{
    BIGNUM *x, *y;
    int ret = 0;

    BN_CTX *new_ctx = ((void*)0);


    if (point->Z_is_one || EC_POINT_is_at_infinity(group, point))
        return 1;


    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new();
        if (ctx == ((void*)0))
            return 0;
    }


    BN_CTX_start(ctx);
    x = BN_CTX_get(ctx);
    y = BN_CTX_get(ctx);
    if (y == ((void*)0))
        goto err;

    if (!EC_POINT_get_affine_coordinates(group, point, x, y, ctx))
        goto err;
    if (!BN_copy(point->X, x))
        goto err;
    if (!BN_copy(point->Y, y))
        goto err;
    if (!BN_one(point->Z))
        goto err;
    point->Z_is_one = 1;

    ret = 1;

 err:
    BN_CTX_end(ctx);

    BN_CTX_free(new_ctx);

    return ret;
}

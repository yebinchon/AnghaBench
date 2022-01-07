
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * Y; int * X; scalar_t__ Z_is_one; } ;
typedef TYPE_1__ EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_cmp (int *,int *) ;
 int EC_POINT_get_affine_coordinates (int const*,TYPE_1__ const*,int *,int *,int *) ;
 scalar_t__ EC_POINT_is_at_infinity (int const*,TYPE_1__ const*) ;

int ec_GF2m_simple_cmp(const EC_GROUP *group, const EC_POINT *a,
                       const EC_POINT *b, BN_CTX *ctx)
{
    BIGNUM *aX, *aY, *bX, *bY;
    int ret = -1;

    BN_CTX *new_ctx = ((void*)0);


    if (EC_POINT_is_at_infinity(group, a)) {
        return EC_POINT_is_at_infinity(group, b) ? 0 : 1;
    }

    if (EC_POINT_is_at_infinity(group, b))
        return 1;

    if (a->Z_is_one && b->Z_is_one) {
        return ((BN_cmp(a->X, b->X) == 0) && BN_cmp(a->Y, b->Y) == 0) ? 0 : 1;
    }


    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new();
        if (ctx == ((void*)0))
            return -1;
    }


    BN_CTX_start(ctx);
    aX = BN_CTX_get(ctx);
    aY = BN_CTX_get(ctx);
    bX = BN_CTX_get(ctx);
    bY = BN_CTX_get(ctx);
    if (bY == ((void*)0))
        goto err;

    if (!EC_POINT_get_affine_coordinates(group, a, aX, aY, ctx))
        goto err;
    if (!EC_POINT_get_affine_coordinates(group, b, bX, bY, ctx))
        goto err;
    ret = ((BN_cmp(aX, bX) == 0) && BN_cmp(aY, bY) == 0) ? 0 : 1;

 err:
    BN_CTX_end(ctx);

    BN_CTX_free(new_ctx);

    return ret;
}

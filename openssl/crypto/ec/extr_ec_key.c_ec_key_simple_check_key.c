
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * order; } ;
struct TYPE_9__ {int * pub_key; TYPE_4__* group; int * priv_key; int libctx; } ;
typedef int EC_POINT ;
typedef TYPE_1__ EC_KEY ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new_ex (int ) ;
 scalar_t__ BN_cmp (int *,int const*) ;
 scalar_t__ BN_is_zero (int const*) ;
 int const* BN_value_one () ;
 int EC_F_EC_KEY_SIMPLE_CHECK_KEY ;
 scalar_t__ EC_POINT_cmp (TYPE_4__*,int *,int *,int *) ;
 int EC_POINT_free (int *) ;
 scalar_t__ EC_POINT_is_at_infinity (TYPE_4__*,int *) ;
 scalar_t__ EC_POINT_is_on_curve (TYPE_4__*,int *,int *) ;
 int EC_POINT_mul (TYPE_4__*,int *,int *,int *,int const*,int *) ;
 int * EC_POINT_new (TYPE_4__*) ;
 int EC_R_COORDINATES_OUT_OF_RANGE ;
 int EC_R_INVALID_GROUP_ORDER ;
 int EC_R_INVALID_PRIVATE_KEY ;
 int EC_R_POINT_AT_INFINITY ;
 int EC_R_POINT_IS_NOT_ON_CURVE ;
 int EC_R_WRONG_ORDER ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int ec_key_public_range_check (int *,TYPE_1__ const*) ;

int ec_key_simple_check_key(const EC_KEY *eckey)
{
    int ok = 0;
    BN_CTX *ctx = ((void*)0);
    const BIGNUM *order = ((void*)0);
    EC_POINT *point = ((void*)0);

    if (eckey == ((void*)0) || eckey->group == ((void*)0) || eckey->pub_key == ((void*)0)) {
        ECerr(EC_F_EC_KEY_SIMPLE_CHECK_KEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }


    if (EC_POINT_is_at_infinity(eckey->group, eckey->pub_key)) {
        ECerr(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_POINT_AT_INFINITY);
        goto err;
    }

    if ((ctx = BN_CTX_new_ex(eckey->libctx)) == ((void*)0))
        goto err;

    if ((point = EC_POINT_new(eckey->group)) == ((void*)0))
        goto err;


    if (!ec_key_public_range_check(ctx, eckey)) {
        ECerr(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_COORDINATES_OUT_OF_RANGE);
        goto err;
    }


    if (EC_POINT_is_on_curve(eckey->group, eckey->pub_key, ctx) <= 0) {
        ECerr(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_POINT_IS_NOT_ON_CURVE);
        goto err;
    }

    order = eckey->group->order;
    if (BN_is_zero(order)) {
        ECerr(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_INVALID_GROUP_ORDER);
        goto err;
    }

    if (!EC_POINT_mul(eckey->group, point, ((void*)0), eckey->pub_key, order, ctx)) {
        ECerr(EC_F_EC_KEY_SIMPLE_CHECK_KEY, ERR_R_EC_LIB);
        goto err;
    }
    if (!EC_POINT_is_at_infinity(eckey->group, point)) {
        ECerr(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_WRONG_ORDER);
        goto err;
    }

    if (eckey->priv_key != ((void*)0)) {




        if (BN_cmp(eckey->priv_key, BN_value_one()) < 0
                || BN_cmp(eckey->priv_key, order) >= 0) {
            ECerr(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_WRONG_ORDER);
            goto err;
        }




        if (!EC_POINT_mul(eckey->group, point, eckey->priv_key,
                          ((void*)0), ((void*)0), ctx)) {
            ECerr(EC_F_EC_KEY_SIMPLE_CHECK_KEY, ERR_R_EC_LIB);
            goto err;
        }
        if (EC_POINT_cmp(eckey->group, point, eckey->pub_key, ctx) != 0) {
            ECerr(EC_F_EC_KEY_SIMPLE_CHECK_KEY, EC_R_INVALID_PRIVATE_KEY);
            goto err;
        }
    }
    ok = 1;
 err:
    BN_CTX_free(ctx);
    EC_POINT_free(point);
    return ok;
}

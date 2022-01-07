
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * field_data2; int * field_data1; int libctx; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_MONT_CTX ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new_ex (int ) ;
 int BN_MONT_CTX_free (int *) ;
 int * BN_MONT_CTX_new () ;
 int BN_MONT_CTX_set (int *,int const*,int *) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_to_montgomery (int *,int ,int *,int *) ;
 int BN_value_one () ;
 int EC_F_EC_GFP_MONT_GROUP_SET_CURVE ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int ec_GFp_simple_group_set_curve (TYPE_1__*,int const*,int const*,int const*,int *) ;

int ec_GFp_mont_group_set_curve(EC_GROUP *group, const BIGNUM *p,
                                const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx)
{
    BN_CTX *new_ctx = ((void*)0);
    BN_MONT_CTX *mont = ((void*)0);
    BIGNUM *one = ((void*)0);
    int ret = 0;

    BN_MONT_CTX_free(group->field_data1);
    group->field_data1 = ((void*)0);
    BN_free(group->field_data2);
    group->field_data2 = ((void*)0);

    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new_ex(group->libctx);
        if (ctx == ((void*)0))
            return 0;
    }

    mont = BN_MONT_CTX_new();
    if (mont == ((void*)0))
        goto err;
    if (!BN_MONT_CTX_set(mont, p, ctx)) {
        ECerr(EC_F_EC_GFP_MONT_GROUP_SET_CURVE, ERR_R_BN_LIB);
        goto err;
    }
    one = BN_new();
    if (one == ((void*)0))
        goto err;
    if (!BN_to_montgomery(one, BN_value_one(), mont, ctx))
        goto err;

    group->field_data1 = mont;
    mont = ((void*)0);
    group->field_data2 = one;
    one = ((void*)0);

    ret = ec_GFp_simple_group_set_curve(group, p, a, b, ctx);

    if (!ret) {
        BN_MONT_CTX_free(group->field_data1);
        group->field_data1 = ((void*)0);
        BN_free(group->field_data2);
        group->field_data2 = ((void*)0);
    }

 err:
    BN_free(one);
    BN_CTX_free(new_ctx);
    BN_MONT_CTX_free(mont);
    return ret;
}

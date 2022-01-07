
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* meth; int field; int libctx; } ;
struct TYPE_6__ {int (* field_mul ) (TYPE_2__ const*,int const*,int const*,int const*,int *) ;} ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int const* BN_CTX_get (int *) ;
 int * BN_CTX_secure_new_ex (int ) ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_is_zero (int const*) ;
 int BN_mod_inverse (int const*,int const*,int ,int *) ;
 int BN_priv_rand_range_ex (int const*,int ,int *) ;
 int EC_F_EC_GFP_SIMPLE_FIELD_INV ;
 int EC_R_CANNOT_INVERT ;
 int ECerr (int ,int ) ;
 int stub1 (TYPE_2__ const*,int const*,int const*,int const*,int *) ;
 int stub2 (TYPE_2__ const*,int const*,int const*,int const*,int *) ;

int ec_GFp_simple_field_inv(const EC_GROUP *group, BIGNUM *r, const BIGNUM *a,
                            BN_CTX *ctx)
{
    BIGNUM *e = ((void*)0);
    BN_CTX *new_ctx = ((void*)0);
    int ret = 0;

    if (ctx == ((void*)0)
            && (ctx = new_ctx = BN_CTX_secure_new_ex(group->libctx)) == ((void*)0))
        return 0;

    BN_CTX_start(ctx);
    if ((e = BN_CTX_get(ctx)) == ((void*)0))
        goto err;

    do {
        if (!BN_priv_rand_range_ex(e, group->field, ctx))
        goto err;
    } while (BN_is_zero(e));


    if (!group->meth->field_mul(group, r, a, e, ctx))
        goto err;

    if (!BN_mod_inverse(r, r, group->field, ctx)) {
        ECerr(EC_F_EC_GFP_SIMPLE_FIELD_INV, EC_R_CANNOT_INVERT);
        goto err;
    }

    if (!group->meth->field_mul(group, r, r, e, ctx))
        goto err;

    ret = 1;

 err:
    BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return ret;
}

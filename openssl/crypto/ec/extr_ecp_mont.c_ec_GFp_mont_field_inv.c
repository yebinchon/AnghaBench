
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * field_data1; int field; int libctx; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_secure_new_ex (int ) ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int BN_mod_exp_mont (int *,int const*,int *,int ,int *,int *) ;
 int BN_set_word (int *,int) ;
 int BN_sub (int *,int ,int *) ;
 int EC_F_EC_GFP_MONT_FIELD_INV ;
 int EC_R_CANNOT_INVERT ;
 int ECerr (int ,int ) ;

int ec_GFp_mont_field_inv(const EC_GROUP *group, BIGNUM *r, const BIGNUM *a,
                            BN_CTX *ctx)
{
    BIGNUM *e = ((void*)0);
    BN_CTX *new_ctx = ((void*)0);
    int ret = 0;

    if (group->field_data1 == ((void*)0))
        return 0;

    if (ctx == ((void*)0)
            && (ctx = new_ctx = BN_CTX_secure_new_ex(group->libctx)) == ((void*)0))
        return 0;

    BN_CTX_start(ctx);
    if ((e = BN_CTX_get(ctx)) == ((void*)0))
        goto err;


    if (!BN_set_word(e, 2))
        goto err;
    if (!BN_sub(e, group->field, e))
        goto err;




    if (!BN_mod_exp_mont(r, a, e, group->field, ctx, group->field_data1))
        goto err;


    if (BN_is_zero(r)) {
        ECerr(EC_F_EC_GFP_MONT_FIELD_INV, EC_R_CANNOT_INVERT);
        goto err;
    }

    ret = 1;

  err:
    BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return ret;
}

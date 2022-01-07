
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int a_is_minus3; int const* field; int const* b; TYPE_1__* meth; int const* a; int libctx; } ;
struct TYPE_6__ {int (* field_encode ) (TYPE_2__*,int const*,int const*,int *) ;} ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int const* BN_CTX_get (int *) ;
 int * BN_CTX_new_ex (int ) ;
 int BN_CTX_start (int *) ;
 int BN_add_word (int const*,int) ;
 scalar_t__ BN_cmp (int const*,int const*) ;
 int BN_copy (int const*,int const*) ;
 int BN_is_odd (int const*) ;
 int BN_nnmod (int const*,int const*,int const*,int *) ;
 int BN_num_bits (int const*) ;
 int BN_set_negative (int const*,int ) ;
 int EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE ;
 int EC_R_INVALID_FIELD ;
 int ECerr (int ,int ) ;
 int stub1 (TYPE_2__*,int const*,int const*,int *) ;
 int stub2 (TYPE_2__*,int const*,int const*,int *) ;

int ec_GFp_simple_group_set_curve(EC_GROUP *group,
                                  const BIGNUM *p, const BIGNUM *a,
                                  const BIGNUM *b, BN_CTX *ctx)
{
    int ret = 0;
    BN_CTX *new_ctx = ((void*)0);
    BIGNUM *tmp_a;


    if (BN_num_bits(p) <= 2 || !BN_is_odd(p)) {
        ECerr(EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE, EC_R_INVALID_FIELD);
        return 0;
    }

    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new_ex(group->libctx);
        if (ctx == ((void*)0))
            return 0;
    }

    BN_CTX_start(ctx);
    tmp_a = BN_CTX_get(ctx);
    if (tmp_a == ((void*)0))
        goto err;


    if (!BN_copy(group->field, p))
        goto err;
    BN_set_negative(group->field, 0);


    if (!BN_nnmod(tmp_a, a, p, ctx))
        goto err;
    if (group->meth->field_encode) {
        if (!group->meth->field_encode(group, group->a, tmp_a, ctx))
            goto err;
    } else if (!BN_copy(group->a, tmp_a))
        goto err;


    if (!BN_nnmod(group->b, b, p, ctx))
        goto err;
    if (group->meth->field_encode)
        if (!group->meth->field_encode(group, group->b, group->b, ctx))
            goto err;


    if (!BN_add_word(tmp_a, 3))
        goto err;
    group->a_is_minus3 = (0 == BN_cmp(tmp_a, group->field));

    ret = 1;

 err:
    BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return ret;
}

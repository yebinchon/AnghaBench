
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int * field; TYPE_1__* meth; } ;
struct TYPE_12__ {int (* field_inv ) (TYPE_2__ const*,int *,int *,int *) ;int (* field_mul ) (TYPE_2__ const*,int *,int *,int *,int *) ;int (* field_encode ) (TYPE_2__ const*,int *,int *,int *) ;int (* field_decode ) (TYPE_2__ const*,int *,int *,int *) ;} ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ONE ;
 int BN_is_one (int *) ;
 scalar_t__ BN_num_bits (int *) ;
 int BN_pseudo_rand (int *,scalar_t__,int ,int ) ;
 int * BN_value_one () ;
 int BN_zero (int *) ;
 scalar_t__ EC_R_CANNOT_INVERT ;
 scalar_t__ ERR_GET_LIB (int ) ;
 scalar_t__ ERR_GET_REASON (int ) ;
 scalar_t__ ERR_LIB_EC ;
 int ERR_clear_error () ;
 int ERR_peek_last_error () ;
 int TEST_false (int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 int stub1 (TYPE_2__ const*,int *,int *,int *) ;
 int stub2 (TYPE_2__ const*,int *,int *,int *) ;
 int stub3 (TYPE_2__ const*,int *,int *,int *) ;
 int stub4 (TYPE_2__ const*,int *,int *,int *) ;
 int stub5 (TYPE_2__ const*,int *,int *,int *,int *) ;
 int stub6 (TYPE_2__ const*,int *,int *,int *) ;
 int stub7 (TYPE_2__ const*,int *,int *,int *) ;
 int stub8 (TYPE_2__ const*,int *,int *,int *) ;

__attribute__((used)) static int group_field_tests(const EC_GROUP *group, BN_CTX *ctx)
{
    BIGNUM *a = ((void*)0), *b = ((void*)0), *c = ((void*)0);
    int ret = 0;

    if (group->meth->field_inv == ((void*)0) || group->meth->field_mul == ((void*)0))
        return 1;

    BN_CTX_start(ctx);
    a = BN_CTX_get(ctx);
    b = BN_CTX_get(ctx);
    if (!TEST_ptr(c = BN_CTX_get(ctx))

        || !TEST_true(group->meth->field_inv(group, b, BN_value_one(), ctx))
        || !TEST_true(BN_is_one(b))

        || !TEST_true(BN_pseudo_rand(a, BN_num_bits(group->field) - 1,
                                     BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY))
        || !TEST_true(group->meth->field_inv(group, b, a, ctx))
        || (group->meth->field_encode &&
            !TEST_true(group->meth->field_encode(group, a, a, ctx)))
        || (group->meth->field_encode &&
            !TEST_true(group->meth->field_encode(group, b, b, ctx)))
        || !TEST_true(group->meth->field_mul(group, c, a, b, ctx))
        || (group->meth->field_decode &&
            !TEST_true(group->meth->field_decode(group, c, c, ctx)))
        || !TEST_true(BN_is_one(c)))
        goto err;


    BN_zero(a);
    if (!TEST_false(group->meth->field_inv(group, b, a, ctx))
        || !TEST_true(ERR_GET_LIB(ERR_peek_last_error()) == ERR_LIB_EC)
        || !TEST_true(ERR_GET_REASON(ERR_peek_last_error()) ==
                      EC_R_CANNOT_INVERT)

        || !TEST_false(group->meth->field_inv(group, b, group->field, ctx))
        || !TEST_true(ERR_GET_LIB(ERR_peek_last_error()) == ERR_LIB_EC)
        || !TEST_true(ERR_GET_REASON(ERR_peek_last_error()) ==
                      EC_R_CANNOT_INVERT))
        goto err;

    ERR_clear_error();
    ret = 1;
 err:
    BN_CTX_end(ctx);
    return ret;
}

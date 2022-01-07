
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_24__ {int top; int neg; int flags; int d; } ;
struct TYPE_22__ {int top; int d; } ;
struct TYPE_23__ {int n0; TYPE_1__ N; } ;
typedef TYPE_2__ BN_MONT_CTX ;
typedef int BN_CTX ;
typedef TYPE_3__ BIGNUM ;


 int BN_CTX_end (int *) ;
 TYPE_3__* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_FLG_FIXED_TOP ;
 int BN_from_montgomery (TYPE_3__*,TYPE_3__*,TYPE_2__*,int *) ;
 int bn_check_top (TYPE_3__*) ;
 int bn_from_montgomery_word (TYPE_3__*,TYPE_3__*,TYPE_2__*) ;
 int bn_mul_fixed_top (TYPE_3__*,TYPE_3__ const*,TYPE_3__ const*,int *) ;
 scalar_t__ bn_mul_mont (int ,int ,int ,int ,int ,int) ;
 int bn_sqr_fixed_top (TYPE_3__*,TYPE_3__ const*,int *) ;
 int * bn_wexpand (TYPE_3__*,int) ;

int bn_mul_mont_fixed_top(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                          BN_MONT_CTX *mont, BN_CTX *ctx)
{
    BIGNUM *tmp;
    int ret = 0;
    int num = mont->N.top;
    if ((a->top + b->top) > 2 * num)
        return 0;

    BN_CTX_start(ctx);
    tmp = BN_CTX_get(ctx);
    if (tmp == ((void*)0))
        goto err;

    bn_check_top(tmp);
    if (a == b) {
        if (!bn_sqr_fixed_top(tmp, a, ctx))
            goto err;
    } else {
        if (!bn_mul_fixed_top(tmp, a, b, ctx))
            goto err;
    }





    if (!BN_from_montgomery(r, tmp, mont, ctx))
        goto err;

    ret = 1;
 err:
    BN_CTX_end(ctx);
    return ret;
}

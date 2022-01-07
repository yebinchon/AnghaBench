
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__* d; int top; } ;
typedef int BN_CTX ;
typedef TYPE_1__ BIGNUM ;


 int BN_F_BN_DIV ;
 int BN_R_DIV_BY_ZERO ;
 int BN_R_NOT_INITIALIZED ;
 scalar_t__ BN_is_zero (TYPE_1__ const*) ;
 int BNerr (int ,int ) ;
 int bn_correct_top (TYPE_1__*) ;
 int bn_div_fixed_top (TYPE_1__*,TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int *) ;

int BN_div(BIGNUM *dv, BIGNUM *rm, const BIGNUM *num, const BIGNUM *divisor,
           BN_CTX *ctx)
{
    int ret;

    if (BN_is_zero(divisor)) {
        BNerr(BN_F_BN_DIV, BN_R_DIV_BY_ZERO);
        return 0;
    }






    if (divisor->d[divisor->top - 1] == 0) {
        BNerr(BN_F_BN_DIV, BN_R_NOT_INITIALIZED);
        return 0;
    }

    ret = bn_div_fixed_top(dv, rm, num, divisor, ctx);

    if (ret) {
        if (dv != ((void*)0))
            bn_correct_top(dv);
        if (rm != ((void*)0))
            bn_correct_top(rm);
    }

    return ret;
}

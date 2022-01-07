
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {int top; int * d; int neg; } ;
typedef int BN_ULONG ;
typedef int BN_CTX ;
typedef TYPE_1__ const BIGNUM ;


 int BN_FLG_CONSTTIME ;
 scalar_t__ BN_get_flags (TYPE_1__ const*,int ) ;
 scalar_t__ BN_is_odd (TYPE_1__ const*) ;
 int BN_mod_exp_mont (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *,int *) ;
 int BN_mod_exp_mont_word (TYPE_1__ const*,int ,TYPE_1__ const*,TYPE_1__ const*,int *,int *) ;
 int BN_mod_exp_recp (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int BN_mod_exp_simple (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int bn_check_top (TYPE_1__ const*) ;

int BN_mod_exp(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, const BIGNUM *m,
               BN_CTX *ctx)
{
    int ret;

    bn_check_top(a);
    bn_check_top(p);
    bn_check_top(m);
    if (BN_is_odd(m)) {

        if (a->top == 1 && !a->neg
            && (BN_get_flags(p, BN_FLG_CONSTTIME) == 0)
            && (BN_get_flags(a, BN_FLG_CONSTTIME) == 0)
            && (BN_get_flags(m, BN_FLG_CONSTTIME) == 0)) {
            BN_ULONG A = a->d[0];
            ret = BN_mod_exp_mont_word(r, A, p, m, ctx, ((void*)0));
        } else

            ret = BN_mod_exp_mont(r, a, p, m, ctx, ((void*)0));
    } else


    {
        ret = BN_mod_exp_recp(r, a, p, m, ctx);
    }






    bn_check_top(r);
    return ret;
}

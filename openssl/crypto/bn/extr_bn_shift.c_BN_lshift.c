
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_F_BN_LSHIFT ;
 int BN_R_INVALID_SHIFT ;
 int BNerr (int ,int ) ;
 int bn_check_top (int *) ;
 int bn_correct_top (int *) ;
 int bn_lshift_fixed_top (int *,int const*,int) ;

int BN_lshift(BIGNUM *r, const BIGNUM *a, int n)
{
    int ret;

    if (n < 0) {
        BNerr(BN_F_BN_LSHIFT, BN_R_INVALID_SHIFT);
        return 0;
    }

    ret = bn_lshift_fixed_top(r, a, n);

    bn_correct_top(r);
    bn_check_top(r);

    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const BIGNUM ;


 int BN_F_BN_MOD_LSHIFT_QUICK ;
 int BN_R_INPUT_NOT_REDUCED ;
 scalar_t__ BN_cmp (int const*,int const*) ;
 int * BN_copy (int const*,int const*) ;
 int BN_lshift (int const*,int const*,int) ;
 int BN_lshift1 (int const*,int const*) ;
 int BN_num_bits (int const*) ;
 int BN_sub (int const*,int const*,int const*) ;
 int BNerr (int ,int ) ;
 int bn_check_top (int const*) ;

int BN_mod_lshift_quick(BIGNUM *r, const BIGNUM *a, int n, const BIGNUM *m)
{
    if (r != a) {
        if (BN_copy(r, a) == ((void*)0))
            return 0;
    }

    while (n > 0) {
        int max_shift;


        max_shift = BN_num_bits(m) - BN_num_bits(r);


        if (max_shift < 0) {
            BNerr(BN_F_BN_MOD_LSHIFT_QUICK, BN_R_INPUT_NOT_REDUCED);
            return 0;
        }

        if (max_shift > n)
            max_shift = n;

        if (max_shift) {
            if (!BN_lshift(r, r, max_shift))
                return 0;
            n -= max_shift;
        } else {
            if (!BN_lshift1(r, r))
                return 0;
            --n;
        }



        if (BN_cmp(r, m) >= 0) {
            if (!BN_sub(r, r, m))
                return 0;
        }
    }
    bn_check_top(r);

    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int bn_check_prime_int (int const*,int,int *,int,int *) ;

int BN_is_prime_fasttest_ex(const BIGNUM *w, int checks, BN_CTX *ctx,
                            int do_trial_division, BN_GENCB *cb)
{
    return bn_check_prime_int(w, checks, ctx, do_trial_division, cb);
}

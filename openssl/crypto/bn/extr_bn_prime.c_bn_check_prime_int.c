
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_num_bits (int const*) ;
 int bn_is_prime_int (int const*,int,int *,int,int *) ;
 int bn_mr_min_checks (int ) ;

int bn_check_prime_int(const BIGNUM *w, int checks, BN_CTX *ctx,
                       int do_trial_division, BN_GENCB *cb)
{
    int min_checks = bn_mr_min_checks(BN_num_bits(w));

    if (checks < min_checks)
        checks = min_checks;

    return bn_is_prime_int(w, checks, ctx, do_trial_division, cb);
}

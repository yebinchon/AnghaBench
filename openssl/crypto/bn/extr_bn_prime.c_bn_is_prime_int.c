
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BN_ULONG ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_GENCB_call (int *,int,int) ;
 int BN_PRIMETEST_PROBABLY_PRIME ;
 scalar_t__ BN_cmp (int const*,int ) ;
 scalar_t__ BN_is_odd (int const*) ;
 int BN_is_word (int const*,int) ;
 scalar_t__ BN_mod_word (int const*,int) ;
 int BN_num_bits (int const*) ;
 int BN_value_one () ;
 int bn_miller_rabin_is_prime (int const*,int,int *,int *,int ,int*) ;
 int calc_trial_divisions (int ) ;
 int* primes ;

__attribute__((used)) static int bn_is_prime_int(const BIGNUM *w, int checks, BN_CTX *ctx,
                           int do_trial_division, BN_GENCB *cb)
{
    int i, status, ret = -1;

    BN_CTX *ctxlocal = ((void*)0);







    if (BN_cmp(w, BN_value_one()) <= 0)
        return 0;


    if (BN_is_odd(w)) {

        if (BN_is_word(w, 3))
            return 1;
    } else {

        return BN_is_word(w, 2);
    }


    if (do_trial_division) {
        int trial_divisions = calc_trial_divisions(BN_num_bits(w));

        for (i = 1; i < trial_divisions; i++) {
            BN_ULONG mod = BN_mod_word(w, primes[i]);
            if (mod == (BN_ULONG)-1)
                return -1;
            if (mod == 0)
                return BN_is_word(w, primes[i]);
        }
        if (!BN_GENCB_call(cb, 1, -1))
            return -1;
    }

    if (ctx == ((void*)0) && (ctxlocal = ctx = BN_CTX_new()) == ((void*)0))
        goto err;


    ret = bn_miller_rabin_is_prime(w, checks, ctx, cb, 0, &status);
    if (!ret)
        goto err;
    ret = (status == BN_PRIMETEST_PROBABLY_PRIME);
err:

    BN_CTX_free(ctxlocal);

    return ret;
}

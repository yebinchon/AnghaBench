
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ prime_t ;
typedef scalar_t__ BN_ULONG ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 scalar_t__ BN_MASK2 ;
 int BN_RAND_BOTTOM_ODD ;
 int BN_RAND_TOP_TWO ;
 int BN_add_word (int *,scalar_t__) ;
 scalar_t__ BN_get_word (int *) ;
 scalar_t__ BN_mod_word (int *,scalar_t__) ;
 int BN_num_bits (int *) ;
 int BN_priv_rand_ex (int *,int,int ,int ,int *) ;
 int BN_set_bit (int *,int) ;
 int bn_check_top (int *) ;
 int calc_trial_divisions (int) ;
 scalar_t__* primes ;
 scalar_t__ square (scalar_t__) ;

__attribute__((used)) static int probable_prime(BIGNUM *rnd, int bits, int safe, prime_t *mods,
                          BN_CTX *ctx)
{
    int i;
    BN_ULONG delta;
    int trial_divisions = calc_trial_divisions(bits);
    BN_ULONG maxdelta = BN_MASK2 - primes[trial_divisions - 1];

 again:

    if (!BN_priv_rand_ex(rnd, bits, BN_RAND_TOP_TWO, BN_RAND_BOTTOM_ODD, ctx))
        return 0;
    if (safe && !BN_set_bit(rnd, 1))
        return 0;

    for (i = 1; i < trial_divisions; i++) {
        BN_ULONG mod = BN_mod_word(rnd, (BN_ULONG)primes[i]);
        if (mod == (BN_ULONG)-1)
            return 0;
        mods[i] = (prime_t) mod;
    }
    delta = 0;
 loop:
    for (i = 1; i < trial_divisions; i++) {







        if (bits <= 31 && delta <= 0x7fffffff
                && square(primes[i]) > BN_get_word(rnd) + delta)
            break;
        if (safe ? (mods[i] + delta) % primes[i] <= 1
                 : (mods[i] + delta) % primes[i] == 0) {
            delta += safe ? 4 : 2;
            if (delta > maxdelta)
                goto again;
            goto loop;
        }
    }
    if (!BN_add_word(rnd, delta))
        return 0;
    if (BN_num_bits(rnd) != bits)
        goto again;
    bn_check_top(rnd);
    return 1;
}

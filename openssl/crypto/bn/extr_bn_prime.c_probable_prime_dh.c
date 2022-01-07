
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ prime_t ;
typedef scalar_t__ BN_ULONG ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_MASK2 ;
 int BN_RAND_BOTTOM_ODD ;
 int BN_RAND_TOP_ONE ;
 int BN_add (int const*,int const*,int const*) ;
 int BN_add_word (int const*,scalar_t__) ;
 scalar_t__ BN_get_word (int const*) ;
 int BN_mod (int const*,int const*,int const*,int *) ;
 scalar_t__ BN_mod_word (int const*,scalar_t__) ;
 int BN_num_bits (int const*) ;
 int BN_rand_ex (int const*,int,int ,int ,int *) ;
 int BN_sub (int const*,int const*,int const*) ;
 int bn_check_top (int const*) ;
 int calc_trial_divisions (int) ;
 scalar_t__* primes ;
 scalar_t__ square (scalar_t__) ;

__attribute__((used)) static int probable_prime_dh(BIGNUM *rnd, int bits, int safe, prime_t *mods,
                             const BIGNUM *add, const BIGNUM *rem,
                             BN_CTX *ctx)
{
    int i, ret = 0;
    BIGNUM *t1;
    BN_ULONG delta;
    int trial_divisions = calc_trial_divisions(bits);
    BN_ULONG maxdelta = BN_MASK2 - primes[trial_divisions - 1];

    BN_CTX_start(ctx);
    if ((t1 = BN_CTX_get(ctx)) == ((void*)0))
        goto err;

    if (maxdelta > BN_MASK2 - BN_get_word(add))
        maxdelta = BN_MASK2 - BN_get_word(add);

 again:
    if (!BN_rand_ex(rnd, bits, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD, ctx))
        goto err;



    if (!BN_mod(t1, rnd, add, ctx))
        goto err;
    if (!BN_sub(rnd, rnd, t1))
        goto err;
    if (rem == ((void*)0)) {
        if (!BN_add_word(rnd, safe ? 3u : 1u))
            goto err;
    } else {
        if (!BN_add(rnd, rnd, rem))
            goto err;
    }

    if (BN_num_bits(rnd) < bits
            || BN_get_word(rnd) < (safe ? 5u : 3u)) {
        if (!BN_add(rnd, rnd, add))
            goto err;
    }


    for (i = 1; i < trial_divisions; i++) {
        BN_ULONG mod = BN_mod_word(rnd, (BN_ULONG)primes[i]);
        if (mod == (BN_ULONG)-1)
            goto err;
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
            delta += BN_get_word(add);
            if (delta > maxdelta)
                goto again;
            goto loop;
        }
    }
    if (!BN_add_word(rnd, delta))
        goto err;
    ret = 1;

 err:
    BN_CTX_end(ctx);
    bn_check_top(rnd);
    return ret;
}

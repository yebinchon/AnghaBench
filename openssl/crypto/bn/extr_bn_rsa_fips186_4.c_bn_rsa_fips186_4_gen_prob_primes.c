
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_RAND_BOTTOM_ODD ;
 int BN_RAND_TOP_ONE ;
 int BN_clear (int *) ;
 scalar_t__ BN_num_bits (int *) ;
 int BN_priv_rand_ex (int *,int,int ,int ,int *) ;
 scalar_t__ bn_rsa_fips186_4_aux_prime_max_sum_size_for_prob_primes (int) ;
 int bn_rsa_fips186_4_aux_prime_min_size (int) ;
 int bn_rsa_fips186_4_derive_prime (int *,int *,int const*,int *,int *,int,int const*,int *,int *) ;
 int bn_rsa_fips186_4_find_aux_prob_prime (int *,int *,int *,int *) ;

int bn_rsa_fips186_4_gen_prob_primes(BIGNUM *p, BIGNUM *Xpout,
                                     BIGNUM *p1, BIGNUM *p2,
                                     const BIGNUM *Xp, const BIGNUM *Xp1,
                                     const BIGNUM *Xp2, int nlen,
                                     const BIGNUM *e, BN_CTX *ctx, BN_GENCB *cb)
{
    int ret = 0;
    BIGNUM *p1i = ((void*)0), *p2i = ((void*)0), *Xp1i = ((void*)0), *Xp2i = ((void*)0);
    int bitlen;

    if (p == ((void*)0) || Xpout == ((void*)0))
        return 0;

    BN_CTX_start(ctx);

    p1i = (p1 != ((void*)0)) ? p1 : BN_CTX_get(ctx);
    p2i = (p2 != ((void*)0)) ? p2 : BN_CTX_get(ctx);
    Xp1i = (Xp1 != ((void*)0)) ? (BIGNUM *)Xp1 : BN_CTX_get(ctx);
    Xp2i = (Xp2 != ((void*)0)) ? (BIGNUM *)Xp2 : BN_CTX_get(ctx);
    if (p1i == ((void*)0) || p2i == ((void*)0) || Xp1i == ((void*)0) || Xp2i == ((void*)0))
        goto err;

    bitlen = bn_rsa_fips186_4_aux_prime_min_size(nlen);
    if (bitlen == 0)
        goto err;


    if (Xp1 == ((void*)0)) {

        if (!BN_priv_rand_ex(Xp1i, bitlen, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD,
                             ctx))
            goto err;
    }

    if (Xp2 == ((void*)0)) {

        if (!BN_priv_rand_ex(Xp2i, bitlen, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD,
                             ctx))
            goto err;
    }


    if (!bn_rsa_fips186_4_find_aux_prob_prime(Xp1i, p1i, ctx, cb)
            || !bn_rsa_fips186_4_find_aux_prob_prime(Xp2i, p2i, ctx, cb))
        goto err;

    if ((BN_num_bits(p1i) + BN_num_bits(p2i)) >=
            bn_rsa_fips186_4_aux_prime_max_sum_size_for_prob_primes(nlen))
        goto err;

    if (!bn_rsa_fips186_4_derive_prime(p, Xpout, Xp, p1i, p2i, nlen, e, ctx, cb))
        goto err;
    ret = 1;
err:

    if (p1 == ((void*)0))
        BN_clear(p1i);
    if (p2 == ((void*)0))
        BN_clear(p2i);
    if (Xp1 == ((void*)0))
        BN_clear(Xp1i);
    if (Xp2 == ((void*)0))
        BN_clear(Xp2i);
    BN_CTX_end(ctx);
    return ret;
}

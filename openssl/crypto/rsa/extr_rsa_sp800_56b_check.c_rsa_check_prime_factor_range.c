
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_cmp (int const*,int *) ;
 int BN_copy (int *,int const*) ;
 int BN_lshift (int *,int *,int) ;
 int BN_num_bits (int const*) ;
 int BN_rshift (int *,int *,int) ;
 int const bn_inv_sqrt_2 ;

int rsa_check_prime_factor_range(const BIGNUM *p, int nbits, BN_CTX *ctx)
{
    int ret = 0;
    BIGNUM *low;
    int shift;

    nbits >>= 1;
    shift = nbits - BN_num_bits(&bn_inv_sqrt_2);


    if (BN_num_bits(p) != nbits)
        return 0;

    BN_CTX_start(ctx);
    low = BN_CTX_get(ctx);
    if (low == ((void*)0))
        goto err;


    if (!BN_copy(low, &bn_inv_sqrt_2))
        goto err;

    if (shift >= 0) {





        if (!BN_lshift(low, low, shift))
            goto err;
    } else if (!BN_rshift(low, low, -shift)) {
        goto err;
    }
    if (BN_cmp(p, low) <= 0)
        goto err;
    ret = 1;
err:
    BN_CTX_end(ctx);
    return ret;
}

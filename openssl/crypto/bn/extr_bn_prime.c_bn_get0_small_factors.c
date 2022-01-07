
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int const _bignum_small_prime_factors ;

const BIGNUM *bn_get0_small_factors(void)
{
    return &_bignum_small_prime_factors;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 scalar_t__ BN_is_odd (int const*) ;
 int BN_num_bits (int const*) ;

int rsa_check_public_exponent(const BIGNUM *e)
{
    int bitlen = BN_num_bits(e);

    return (BN_is_odd(e) && bitlen > 16 && bitlen < 257);
}

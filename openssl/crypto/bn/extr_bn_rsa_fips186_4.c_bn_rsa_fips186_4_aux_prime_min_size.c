
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int bn_rsa_fips186_4_aux_prime_min_size(int nbits)
{
    if (nbits >= 3072)
        return 171;
    if (nbits == 2048)
        return 141;
    return 0;
}

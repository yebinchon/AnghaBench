
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 scalar_t__ BN_is_zero (int *) ;
 int BN_num_bits (int *) ;
 int BN_set_negative (int *,int ) ;
 int BN_sub (int *,int const*,int const*) ;
 int BN_sub_word (int *,int) ;

int rsa_check_pminusq_diff(BIGNUM *diff, const BIGNUM *p, const BIGNUM *q,
                           int nbits)
{
    int bitlen = (nbits >> 1) - 100;

    if (!BN_sub(diff, p, q))
        return -1;
    BN_set_negative(diff, 0);

    if (BN_is_zero(diff))
        return 0;

    if (!BN_sub_word(diff, 1))
        return -1;
    return (BN_num_bits(diff) > bitlen);
}

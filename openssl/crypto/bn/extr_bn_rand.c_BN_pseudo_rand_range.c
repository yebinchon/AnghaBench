
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_rand_range (int *,int const*) ;

int BN_pseudo_rand_range(BIGNUM *r, const BIGNUM *range)
{
    return BN_rand_range(r, range);
}

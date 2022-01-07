
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int PRIVATE ;
 int bnrand_range (int ,int *,int const*,int *) ;

int BN_priv_rand_range(BIGNUM *r, const BIGNUM *range)
{
    return bnrand_range(PRIVATE, r, range, ((void*)0));
}

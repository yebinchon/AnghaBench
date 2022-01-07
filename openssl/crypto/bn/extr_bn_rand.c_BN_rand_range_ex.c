
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int NORMAL ;
 int bnrand_range (int ,int *,int const*,int *) ;

int BN_rand_range_ex(BIGNUM *r, const BIGNUM *range, BN_CTX *ctx)
{
    return bnrand_range(NORMAL, r, range, ctx);
}

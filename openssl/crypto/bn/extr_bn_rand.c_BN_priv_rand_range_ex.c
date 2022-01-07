
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int PRIVATE ;
 int bnrand_range (int ,int *,int const*,int *) ;

int BN_priv_rand_range_ex(BIGNUM *r, const BIGNUM *range, BN_CTX *ctx)
{
    return bnrand_range(PRIVATE, r, range, ctx);
}

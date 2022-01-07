
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 scalar_t__ BN_div (int *,int *,int *,int *,int *) ;
 scalar_t__ BN_gcd (int *,int *,int *,int *) ;
 scalar_t__ BN_mul (int *,int *,int *,int *) ;
 scalar_t__ BN_sub (int *,int const*,int ) ;
 int BN_value_one () ;

int rsa_get_lcm(BN_CTX *ctx, const BIGNUM *p, const BIGNUM *q,
                BIGNUM *lcm, BIGNUM *gcd, BIGNUM *p1, BIGNUM *q1,
                BIGNUM *p1q1)
{
    return BN_sub(p1, p, BN_value_one())
           && BN_sub(q1, q, BN_value_one())
           && BN_mul(p1q1, p1, q1, ctx)
           && BN_gcd(gcd, p1, q1, ctx)
           && BN_div(lcm, ((void*)0), p1q1, gcd, ctx);
}

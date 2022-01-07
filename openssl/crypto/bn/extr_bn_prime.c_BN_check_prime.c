
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int bn_check_prime_int (int const*,int ,int *,int,int *) ;

int BN_check_prime(const BIGNUM *p, BN_CTX *ctx, BN_GENCB *cb)
{
    return bn_check_prime_int(p, 0, ctx, 1, cb);
}

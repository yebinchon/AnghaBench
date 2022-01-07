
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int RR; } ;
typedef TYPE_1__ BN_MONT_CTX ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_mod_mul_montgomery (int *,int const*,int *,TYPE_1__*,int *) ;

int BN_to_montgomery(BIGNUM *r, const BIGNUM *a, BN_MONT_CTX *mont,
                     BN_CTX *ctx)
{
    return BN_mod_mul_montgomery(r, a, &(mont->RR), mont, ctx);
}

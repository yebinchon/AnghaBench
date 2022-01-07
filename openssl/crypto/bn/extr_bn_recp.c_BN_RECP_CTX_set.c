
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ shift; int num_bits; int Nr; int N; } ;
typedef TYPE_1__ BN_RECP_CTX ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_copy (int *,int const*) ;
 int BN_num_bits (int const*) ;
 int BN_zero (int *) ;

int BN_RECP_CTX_set(BN_RECP_CTX *recp, const BIGNUM *d, BN_CTX *ctx)
{
    if (!BN_copy(&(recp->N), d))
        return 0;
    BN_zero(&(recp->Nr));
    recp->num_bits = BN_num_bits(d);
    recp->shift = 0;
    return 1;
}

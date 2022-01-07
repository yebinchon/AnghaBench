
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int PRIVATE ;
 int bnrand (int ,int *,int,int,int,int *) ;

int BN_priv_rand_ex(BIGNUM *rnd, int bits, int top, int bottom, BN_CTX *ctx)
{
    return bnrand(PRIVATE, rnd, bits, top, bottom, ctx);
}

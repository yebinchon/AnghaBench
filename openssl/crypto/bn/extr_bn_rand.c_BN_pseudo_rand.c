
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_rand (int *,int,int,int) ;

int BN_pseudo_rand(BIGNUM *rnd, int bits, int top, int bottom)
{
    return BN_rand(rnd, bits, top, bottom);
}

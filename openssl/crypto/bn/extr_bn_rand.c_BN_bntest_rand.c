
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int TESTING ;
 int bnrand (int ,int *,int,int,int,int *) ;

int BN_bntest_rand(BIGNUM *rnd, int bits, int top, int bottom)
{
    return bnrand(TESTING, rnd, bits, top, bottom, ((void*)0));
}

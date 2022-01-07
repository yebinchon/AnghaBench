
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_cmp (int const*,int const*) ;
 int * BN_copy (int const*,int const*) ;
 int BN_div (int *,int const*,int const*,int const*,int *) ;
 int BN_lshift (int const*,int const*,int) ;
 int BN_num_bits (int const*) ;
 int BN_rshift1 (int const*,int const*) ;
 int BN_sub (int const*,int const*,int const*) ;
 scalar_t__ BN_ucmp (int const*,int const*) ;

int BN_mod(BIGNUM *rem, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx)
 {
 return(BN_div(((void*)0),rem,m,d,ctx));

 }

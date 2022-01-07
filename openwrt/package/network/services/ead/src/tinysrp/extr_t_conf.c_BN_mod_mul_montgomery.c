
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_MONT_CTX ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_from_montgomery (int *,int *,int *,int *) ;
 int BN_mul (int *,int *,int *,int *) ;
 int BN_sqr (int *,int *,int *) ;
 int bn_check_top (int *) ;

int BN_mod_mul_montgomery(BIGNUM *r, BIGNUM *a, BIGNUM *b,
     BN_MONT_CTX *mont, BN_CTX *ctx)
 {
 BIGNUM *tmp,*tmp2;
 int ret=0;

 BN_CTX_start(ctx);
 tmp = BN_CTX_get(ctx);
 tmp2 = BN_CTX_get(ctx);
 if (tmp == ((void*)0) || tmp2 == ((void*)0)) goto err;

 bn_check_top(tmp);
 bn_check_top(tmp2);

 if (a == b)
  {
  if (!BN_sqr(tmp,a,ctx)) goto err;
  }
 else
  {
  if (!BN_mul(tmp,a,b,ctx)) goto err;
  }

 if (!BN_from_montgomery(r,tmp,mont,ctx)) goto err;
 ret=1;
err:
 BN_CTX_end(ctx);
 return(ret);
 }

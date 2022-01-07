
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_FLG_CONSTTIME ;
 int BN_free (int *) ;
 int BN_mod_exp_mont (int *,int *,int *,int *,int *,int *) ;
 int * BN_new () ;
 int BN_with_flags (int *,int *,int ) ;
 int php_openssl_store_errors () ;

__attribute__((used)) static BIGNUM *php_openssl_dh_pub_from_priv(BIGNUM *priv_key, BIGNUM *g, BIGNUM *p)
{
 BIGNUM *pub_key, *priv_key_const_time;
 BN_CTX *ctx;

 pub_key = BN_new();
 if (pub_key == ((void*)0)) {
  php_openssl_store_errors();
  return ((void*)0);
 }

 priv_key_const_time = BN_new();
 if (priv_key_const_time == ((void*)0)) {
  BN_free(pub_key);
  php_openssl_store_errors();
  return ((void*)0);
 }
 ctx = BN_CTX_new();
 if (ctx == ((void*)0)) {
  BN_free(pub_key);
  BN_free(priv_key_const_time);
  php_openssl_store_errors();
  return ((void*)0);
 }

 BN_with_flags(priv_key_const_time, priv_key, BN_FLG_CONSTTIME);

 if (!BN_mod_exp_mont(pub_key, g, priv_key_const_time, p, ctx, ((void*)0))) {
  BN_free(pub_key);
  php_openssl_store_errors();
  pub_key = ((void*)0);
 }

 BN_free(priv_key_const_time);
 BN_CTX_free(ctx);

 return pub_key;
}

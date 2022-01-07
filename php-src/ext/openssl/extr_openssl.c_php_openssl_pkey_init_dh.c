
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_bool ;
typedef int DH ;
typedef int BIGNUM ;


 int DH_generate_key (int *) ;
 int DH_set0_key (int *,int *,int *) ;
 int DH_set0_pqg (int *,int *,int *,int *) ;
 int OPENSSL_PKEY_SET_BN (int *,int *) ;
 int PHP_OPENSSL_RAND_ADD_TIME () ;
 int * php_openssl_dh_pub_from_priv (int *,int *,int *) ;
 int php_openssl_store_errors () ;

__attribute__((used)) static zend_bool php_openssl_pkey_init_dh(DH *dh, zval *data)
{
 BIGNUM *p, *q, *g, *priv_key, *pub_key;

 OPENSSL_PKEY_SET_BN(data, p);
 OPENSSL_PKEY_SET_BN(data, q);
 OPENSSL_PKEY_SET_BN(data, g);
 if (!p || !g || !DH_set0_pqg(dh, p, q, g)) {
  return 0;
 }

 OPENSSL_PKEY_SET_BN(data, priv_key);
 OPENSSL_PKEY_SET_BN(data, pub_key);
 if (pub_key) {
  return DH_set0_key(dh, pub_key, priv_key);
 }
 if (priv_key) {
  pub_key = php_openssl_dh_pub_from_priv(priv_key, g, p);
  if (pub_key == ((void*)0)) {
   return 0;
  }
  return DH_set0_key(dh, pub_key, priv_key);
 }


 PHP_OPENSSL_RAND_ADD_TIME();
 if (!DH_generate_key(dh)) {
  php_openssl_store_errors();
  return 0;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_bool ;
typedef int DSA ;
typedef int BIGNUM ;


 scalar_t__ BN_is_zero (int const*) ;
 int DSA_generate_key (int *) ;
 int DSA_get0_key (int *,int const**,int const**) ;
 int DSA_set0_key (int *,int *,int *) ;
 int DSA_set0_pqg (int *,int *,int *,int *) ;
 int OPENSSL_PKEY_SET_BN (int *,int *) ;
 int PHP_OPENSSL_RAND_ADD_TIME () ;
 int php_openssl_store_errors () ;

__attribute__((used)) static zend_bool php_openssl_pkey_init_dsa(DSA *dsa, zval *data)
{
 BIGNUM *p, *q, *g, *priv_key, *pub_key;
 const BIGNUM *priv_key_const, *pub_key_const;

 OPENSSL_PKEY_SET_BN(data, p);
 OPENSSL_PKEY_SET_BN(data, q);
 OPENSSL_PKEY_SET_BN(data, g);
 if (!p || !q || !g || !DSA_set0_pqg(dsa, p, q, g)) {
  return 0;
 }

 OPENSSL_PKEY_SET_BN(data, pub_key);
 OPENSSL_PKEY_SET_BN(data, priv_key);
 if (pub_key) {
  return DSA_set0_key(dsa, pub_key, priv_key);
 }


 PHP_OPENSSL_RAND_ADD_TIME();
 if (!DSA_generate_key(dsa)) {
  php_openssl_store_errors();
  return 0;
 }



 DSA_get0_key(dsa, &pub_key_const, &priv_key_const);
 if (!pub_key_const || BN_is_zero(pub_key_const)) {
  return 0;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_bool ;
typedef int RSA ;
typedef int EVP_PKEY ;
typedef int BIGNUM ;


 int EVP_PKEY_assign_RSA (int *,int *) ;
 int OPENSSL_PKEY_SET_BN (int *,int *) ;
 int RSA_set0_crt_params (int *,int *,int *,int *) ;
 int RSA_set0_factors (int *,int *,int *) ;
 int RSA_set0_key (int *,int *,int *,int *) ;
 int php_openssl_store_errors () ;

__attribute__((used)) static zend_bool php_openssl_pkey_init_and_assign_rsa(EVP_PKEY *pkey, RSA *rsa, zval *data)
{
 BIGNUM *n, *e, *d, *p, *q, *dmp1, *dmq1, *iqmp;

 OPENSSL_PKEY_SET_BN(data, n);
 OPENSSL_PKEY_SET_BN(data, e);
 OPENSSL_PKEY_SET_BN(data, d);
 if (!n || !d || !RSA_set0_key(rsa, n, e, d)) {
  return 0;
 }

 OPENSSL_PKEY_SET_BN(data, p);
 OPENSSL_PKEY_SET_BN(data, q);
 if ((p || q) && !RSA_set0_factors(rsa, p, q)) {
  return 0;
 }

 OPENSSL_PKEY_SET_BN(data, dmp1);
 OPENSSL_PKEY_SET_BN(data, dmq1);
 OPENSSL_PKEY_SET_BN(data, iqmp);
 if ((dmp1 || dmq1 || iqmp) && !RSA_set0_crt_params(rsa, dmp1, dmq1, iqmp)) {
  return 0;
 }

 if (!EVP_PKEY_assign_RSA(pkey, rsa)) {
  php_openssl_store_errors();
  return 0;
 }

 return 1;
}

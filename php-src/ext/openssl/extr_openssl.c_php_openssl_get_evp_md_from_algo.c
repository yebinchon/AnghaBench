
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef int EVP_MD ;


 scalar_t__ EVP_dss1 () ;
 scalar_t__ EVP_md2 () ;
 scalar_t__ EVP_md4 () ;
 scalar_t__ EVP_md5 () ;
 scalar_t__ EVP_ripemd160 () ;
 scalar_t__ EVP_sha1 () ;
 scalar_t__ EVP_sha224 () ;
 scalar_t__ EVP_sha256 () ;
 scalar_t__ EVP_sha384 () ;
 scalar_t__ EVP_sha512 () ;
__attribute__((used)) static EVP_MD * php_openssl_get_evp_md_from_algo(zend_long algo) {
 EVP_MD *mdtype;

 switch (algo) {
  case 132:
   mdtype = (EVP_MD *) EVP_sha1();
   break;
  case 134:
   mdtype = (EVP_MD *) EVP_md5();
   break;
  case 135:
   mdtype = (EVP_MD *) EVP_md4();
   break;






  case 137:
   mdtype = (EVP_MD *) EVP_dss1();
   break;

  case 131:
   mdtype = (EVP_MD *) EVP_sha224();
   break;
  case 130:
   mdtype = (EVP_MD *) EVP_sha256();
   break;
  case 129:
   mdtype = (EVP_MD *) EVP_sha384();
   break;
  case 128:
   mdtype = (EVP_MD *) EVP_sha512();
   break;
  case 133:
   mdtype = (EVP_MD *) EVP_ripemd160();
   break;
  default:
   return ((void*)0);
   break;
 }
 return mdtype;
}

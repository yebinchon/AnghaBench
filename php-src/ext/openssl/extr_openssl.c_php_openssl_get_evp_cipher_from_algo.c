
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef int EVP_CIPHER ;


 int const* EVP_aes_128_cbc () ;
 int const* EVP_aes_192_cbc () ;
 int const* EVP_aes_256_cbc () ;
 int const* EVP_des_cbc () ;
 int const* EVP_des_ede3_cbc () ;
 int const* EVP_rc2_40_cbc () ;
 int const* EVP_rc2_64_cbc () ;
 int const* EVP_rc2_cbc () ;
__attribute__((used)) static const EVP_CIPHER * php_openssl_get_evp_cipher_from_algo(zend_long algo) {
 switch (algo) {

  case 129:
   return EVP_rc2_40_cbc();
   break;
  case 128:
   return EVP_rc2_64_cbc();
   break;
  case 130:
   return EVP_rc2_cbc();
   break;



  case 131:
   return EVP_des_cbc();
   break;
  case 135:
   return EVP_des_ede3_cbc();
   break;



  case 134:
   return EVP_aes_128_cbc();
   break;
  case 133:
   return EVP_aes_192_cbc();
   break;
  case 132:
   return EVP_aes_256_cbc();
   break;



  default:
   return ((void*)0);
   break;
 }
}

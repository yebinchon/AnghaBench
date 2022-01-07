
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct php_openssl_cipher_mode {int is_aead; int is_single_run_aead; int aead_ivlen_flag; int aead_set_tag_flag; int aead_get_tag_flag; } ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_mode (int const*) ;


 int EVP_CTRL_CCM_GET_TAG ;
 int EVP_CTRL_CCM_SET_IVLEN ;
 int EVP_CTRL_CCM_SET_TAG ;
 int EVP_CTRL_GCM_GET_TAG ;
 int EVP_CTRL_GCM_SET_IVLEN ;
 int EVP_CTRL_GCM_SET_TAG ;
 int memset (struct php_openssl_cipher_mode*,int ,int) ;

__attribute__((used)) static void php_openssl_load_cipher_mode(struct php_openssl_cipher_mode *mode, const EVP_CIPHER *cipher_type)
{
 switch (EVP_CIPHER_mode(cipher_type)) {

  case 128:
   mode->is_aead = 1;
   mode->is_single_run_aead = 0;
   mode->aead_get_tag_flag = EVP_CTRL_GCM_GET_TAG;
   mode->aead_set_tag_flag = EVP_CTRL_GCM_SET_TAG;
   mode->aead_ivlen_flag = EVP_CTRL_GCM_SET_IVLEN;
   break;


  case 129:
   mode->is_aead = 1;
   mode->is_single_run_aead = 1;
   mode->aead_get_tag_flag = EVP_CTRL_CCM_GET_TAG;
   mode->aead_set_tag_flag = EVP_CTRL_CCM_SET_TAG;
   mode->aead_ivlen_flag = EVP_CTRL_CCM_SET_IVLEN;
   break;

  default:
   memset(mode, 0, sizeof(struct php_openssl_cipher_mode));
 }
}

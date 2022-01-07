
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
struct php_openssl_cipher_mode {scalar_t__ is_aead; scalar_t__ is_single_run_aead; } ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 scalar_t__ EVP_CIPHER_block_size (int const*) ;
 int EVP_CipherUpdate (int *,unsigned char*,int*,unsigned char*,int) ;
 int E_WARNING ;
 int FAILURE ;
 int SUCCESS ;
 scalar_t__ ZSTR_VAL (int *) ;
 int php_error_docref (int *,int ,char*) ;
 int php_openssl_store_errors () ;
 int * zend_string_alloc (scalar_t__,int ) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static int php_openssl_cipher_update(const EVP_CIPHER *cipher_type,
  EVP_CIPHER_CTX *cipher_ctx, struct php_openssl_cipher_mode *mode,
  zend_string **poutbuf, int *poutlen, char *data, size_t data_len,
  char *aad, size_t aad_len, int enc)
{
 int i = 0;

 if (mode->is_single_run_aead && !EVP_CipherUpdate(cipher_ctx, ((void*)0), &i, ((void*)0), (int)data_len)) {
  php_openssl_store_errors();
  php_error_docref(((void*)0), E_WARNING, "Setting of data length failed");
  return FAILURE;
 }

 if (mode->is_aead && !EVP_CipherUpdate(cipher_ctx, ((void*)0), &i, (unsigned char *)aad, (int)aad_len)) {
  php_openssl_store_errors();
  php_error_docref(((void*)0), E_WARNING, "Setting of additional application data failed");
  return FAILURE;
 }

 *poutbuf = zend_string_alloc((int)data_len + EVP_CIPHER_block_size(cipher_type), 0);

 if (!EVP_CipherUpdate(cipher_ctx, (unsigned char*)ZSTR_VAL(*poutbuf),
     &i, (unsigned char *)data, (int)data_len)) {







  php_openssl_store_errors();
  zend_string_release_ex(*poutbuf, 0);
  return FAILURE;
 }

 *poutlen = i;

 return SUCCESS;
}

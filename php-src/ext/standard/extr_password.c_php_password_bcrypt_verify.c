
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const zend_string ;
typedef int zend_bool ;


 size_t ZSTR_LEN (int const*) ;
 int* ZSTR_VAL (int const*) ;
 int const* php_crypt (int*,int,int*,int,int) ;
 int zend_string_free (int const*) ;

__attribute__((used)) static zend_bool php_password_bcrypt_verify(const zend_string *password, const zend_string *hash) {
 size_t i;
 int status = 0;
 zend_string *ret = php_crypt(ZSTR_VAL(password), (int)ZSTR_LEN(password), ZSTR_VAL(hash), (int)ZSTR_LEN(hash), 1);

 if (!ret) {
  return 0;
 }

 if (ZSTR_LEN(ret) != ZSTR_LEN(hash) || ZSTR_LEN(hash) < 13) {
  zend_string_free(ret);
  return 0;
 }





 for (i = 0; i < ZSTR_LEN(hash); i++) {
  status |= (ZSTR_VAL(ret)[i] ^ ZSTR_VAL(hash)[i]);
 }

 zend_string_free(ret);
 return status == 0;
}

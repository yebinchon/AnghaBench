
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int FAILURE ;
 int SUCCESS ;
 size_t const ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int * php_base64_encode (unsigned char*,size_t const) ;
 int zend_string_free (int *) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static int php_password_salt_to64(const char *str, const size_t str_len, const size_t out_len, char *ret)
{
 size_t pos = 0;
 zend_string *buffer;
 if ((int) str_len < 0) {
  return FAILURE;
 }
 buffer = php_base64_encode((unsigned char*) str, str_len);
 if (ZSTR_LEN(buffer) < out_len) {

  zend_string_release_ex(buffer, 0);
  return FAILURE;
 }
 for (pos = 0; pos < out_len; pos++) {
  if (ZSTR_VAL(buffer)[pos] == '+') {
   ret[pos] = '.';
  } else if (ZSTR_VAL(buffer)[pos] == '=') {
   zend_string_free(buffer);
   return FAILURE;
  } else {
   ret[pos] = ZSTR_VAL(buffer)[pos];
  }
 }
 zend_string_free(buffer);
 return SUCCESS;
}

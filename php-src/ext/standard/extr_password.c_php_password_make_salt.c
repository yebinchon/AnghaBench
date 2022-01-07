
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int E_WARNING ;
 scalar_t__ FAILURE ;
 int INT_MAX ;
 int ZSTR_LEN (int *) ;
 scalar_t__* ZSTR_VAL (int *) ;
 int php_error_docref (int *,int ,char*) ;
 scalar_t__ php_password_salt_to64 (scalar_t__*,int ,size_t,scalar_t__*) ;
 scalar_t__ php_random_bytes_silent (scalar_t__*,int ) ;
 int * zend_string_alloc (size_t,int ) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static zend_string* php_password_make_salt(size_t length)
{
 zend_string *ret, *buffer;

 if (length > (INT_MAX / 3)) {
  php_error_docref(((void*)0), E_WARNING, "Length is too large to safely generate");
  return ((void*)0);
 }

 buffer = zend_string_alloc(length * 3 / 4 + 1, 0);
 if (FAILURE == php_random_bytes_silent(ZSTR_VAL(buffer), ZSTR_LEN(buffer))) {
  php_error_docref(((void*)0), E_WARNING, "Unable to generate salt");
  zend_string_release_ex(buffer, 0);
  return ((void*)0);
 }

 ret = zend_string_alloc(length, 0);
 if (php_password_salt_to64(ZSTR_VAL(buffer), ZSTR_LEN(buffer), length, ZSTR_VAL(ret)) == FAILURE) {
  php_error_docref(((void*)0), E_WARNING, "Generated salt too short");
  zend_string_release_ex(buffer, 0);
  zend_string_release_ex(ret, 0);
  return ((void*)0);
 }
 zend_string_release_ex(buffer, 0);
 ZSTR_VAL(ret)[length] = 0;
 return ret;
}

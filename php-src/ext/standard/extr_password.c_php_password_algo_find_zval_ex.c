
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int php_password_algo ;


 scalar_t__ IS_LONG ;
 scalar_t__ IS_NULL ;
 scalar_t__ IS_STRING ;
 int Z_LVAL_P (int *) ;
 int * Z_STR_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int const php_password_algo_argon2i ;
 int const php_password_algo_argon2id ;
 int const php_password_algo_bcrypt ;
 int const* php_password_algo_find (int *) ;
 int * zend_string_init (char*,int,int ) ;
 int zend_string_release (int *) ;

__attribute__((used)) static const php_password_algo* php_password_algo_find_zval_ex(zval *arg, const php_password_algo* default_algo) {
 if (!arg || (Z_TYPE_P(arg) == IS_NULL)) {
  return default_algo;
 }

 if (Z_TYPE_P(arg) == IS_LONG) {
  switch (Z_LVAL_P(arg)) {
   case 0: return default_algo;
   case 1: return &php_password_algo_bcrypt;




   case 2:
    {
    zend_string *n = zend_string_init("argon2i", sizeof("argon2i")-1, 0);
    const php_password_algo* ret = php_password_algo_find(n);
    zend_string_release(n);
    return ret;
    }
   case 3:
    {
    zend_string *n = zend_string_init("argon2id", sizeof("argon2id")-1, 0);
    const php_password_algo* ret = php_password_algo_find(n);
    zend_string_release(n);
    return ret;
    }

  }
  return ((void*)0);
 }

 if (Z_TYPE_P(arg) != IS_STRING) {
  return ((void*)0);
 }

 return php_password_algo_find(Z_STR_P(arg));
}

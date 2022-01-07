
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int HashTable ;


 int E_WARNING ;
 int php_error_docref (int *,int ,char*) ;
 int * php_password_make_salt (size_t) ;
 scalar_t__ zend_hash_str_exists (int *,char*,int) ;

__attribute__((used)) static zend_string* php_password_get_salt(zval *unused_, size_t required_salt_len, HashTable *options) {
 if (options && zend_hash_str_exists(options, "salt", sizeof("salt") - 1)) {
  php_error_docref(((void*)0), E_WARNING, "The 'salt' option is no longer supported. The provided salt has been been ignored");
 }

 return php_password_make_salt(required_salt_len);
}

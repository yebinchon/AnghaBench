
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_password_algo ;


 int FAILURE ;
 int SUCCESS ;
 int ZVAL_PTR (int *,int *) ;
 int php_password_algos ;
 int strlen (char const*) ;
 scalar_t__ zend_hash_str_add (int *,char const*,int ,int *) ;

int php_password_algo_register(const char *ident, const php_password_algo *algo) {
 zval zalgo;
 ZVAL_PTR(&zalgo, (php_password_algo*)algo);
 if (zend_hash_str_add(&php_password_algos, ident, strlen(ident), &zalgo)) {
  return SUCCESS;
 }
 return FAILURE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int php_password_algo ;


 scalar_t__ IS_PTR ;
 int const* Z_PTR_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int php_password_algos ;
 int * zend_hash_find (int *,int *) ;

const php_password_algo* php_password_algo_find(const zend_string *ident) {
 zval *tmp;

 if (!ident) {
  return ((void*)0);
 }

 tmp = zend_hash_find(&php_password_algos, (zend_string*)ident);
 if (!tmp || (Z_TYPE_P(tmp) != IS_PTR)) {
  return ((void*)0);
 }

 return Z_PTR_P(tmp);
}

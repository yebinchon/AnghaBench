
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_password_algo ;


 int php_password_algo_default () ;
 int const* php_password_algo_find_zval_ex (int *,int ) ;

__attribute__((used)) static const php_password_algo* php_password_algo_find_zval(zval *arg) {
 return php_password_algo_find_zval_ex(arg, php_password_algo_default());
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int php_password_algo ;


 int php_password_algo_default () ;
 int const* php_password_algo_identify_ex (int const*,int ) ;

__attribute__((used)) static inline const php_password_algo* php_password_algo_identify(const zend_string *hash) {
 return php_password_algo_identify_ex(hash, php_password_algo_default());
}

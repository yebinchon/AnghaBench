
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_password_algo ;


 int const php_password_algo_bcrypt ;

const php_password_algo* php_password_algo_default() {
 return &php_password_algo_bcrypt;
}

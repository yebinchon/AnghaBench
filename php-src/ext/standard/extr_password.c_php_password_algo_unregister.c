
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int php_password_algos ;
 int strlen (char const*) ;
 int zend_hash_str_del (int *,char const*,int ) ;

void php_password_algo_unregister(const char *ident) {
 zend_hash_str_del(&php_password_algos, ident, strlen(ident));
}

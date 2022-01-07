
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_bool ;


 int safe_php_register_variable (char*,char*,int ,int *,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void register_http_post_files_variable(char *strvar, char *val, zval *http_post_files, zend_bool override_protection)
{
 safe_php_register_variable(strvar, val, strlen(val), http_post_files, override_protection);
}

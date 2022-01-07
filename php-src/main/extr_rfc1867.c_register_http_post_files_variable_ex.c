
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_bool ;


 int safe_php_register_variable_ex (char*,int *,int *,int ) ;

__attribute__((used)) static void register_http_post_files_variable_ex(char *var, zval *val, zval *http_post_files, zend_bool override_protection)
{
 safe_php_register_variable_ex(var, val, http_post_files, override_protection);
}

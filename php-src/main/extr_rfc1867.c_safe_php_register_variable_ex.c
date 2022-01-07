
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_bool ;


 int is_protected_variable (char*) ;
 int php_register_variable_ex (char*,int *,int *) ;

__attribute__((used)) static void safe_php_register_variable_ex(char *var, zval *val, zval *track_vars_array, zend_bool override_protection)
{
 if (override_protection || !is_protected_variable(var)) {
  php_register_variable_ex(var, val, track_vars_array);
 }
}

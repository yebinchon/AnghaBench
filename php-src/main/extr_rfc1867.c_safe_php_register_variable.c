
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_bool ;


 int is_protected_variable (char*) ;
 int php_register_variable_safe (char*,char*,size_t,int *) ;

__attribute__((used)) static void safe_php_register_variable(char *var, char *strval, size_t val_len, zval *track_vars_array, zend_bool override_protection)
{
 if (override_protection || !is_protected_variable(var)) {
  php_register_variable_safe(var, strval, val_len, track_vars_array);
 }
}

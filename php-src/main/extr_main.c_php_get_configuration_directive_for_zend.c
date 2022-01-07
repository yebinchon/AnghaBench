
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;


 int * cfg_get_entry_ex (int *) ;

__attribute__((used)) static zval *php_get_configuration_directive_for_zend(zend_string *name)
{
 return cfg_get_entry_ex(name);
}

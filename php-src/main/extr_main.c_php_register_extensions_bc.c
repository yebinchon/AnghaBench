
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_module_entry ;


 int FAILURE ;
 int SUCCESS ;
 int * zend_register_internal_module (int ) ;

__attribute__((used)) static int php_register_extensions_bc(zend_module_entry *ptr, int count)
{
 while (count--) {
  if (zend_register_internal_module(ptr++) == ((void*)0)) {
   return FAILURE;
   }
 }
 return SUCCESS;
}

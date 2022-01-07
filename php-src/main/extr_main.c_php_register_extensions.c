
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_module_entry ;


 int FAILURE ;
 int SUCCESS ;
 int * zend_register_internal_module (int * const) ;

int php_register_extensions(zend_module_entry * const * ptr, int count)
{
 zend_module_entry * const * end = ptr + count;

 while (ptr < end) {
  if (*ptr) {
   if (zend_register_internal_module(*ptr)==((void*)0)) {
    return FAILURE;
   }
  }
  ptr++;
 }
 return SUCCESS;
}

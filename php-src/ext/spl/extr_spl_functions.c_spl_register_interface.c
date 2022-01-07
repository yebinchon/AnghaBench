
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_function_entry ;
typedef int zend_class_entry ;


 int INIT_CLASS_ENTRY_EX (int ,char*,int ,int const*) ;
 int strlen (char*) ;
 int * zend_register_internal_interface (int *) ;

void spl_register_interface(zend_class_entry ** ppce, char * class_name, const zend_function_entry * functions)
{
 zend_class_entry ce;

 INIT_CLASS_ENTRY_EX(ce, class_name, strlen(class_name), functions);
 *ppce = zend_register_internal_interface(&ce);
}

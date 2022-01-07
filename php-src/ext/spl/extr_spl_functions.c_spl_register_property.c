
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_class_entry ;


 int zend_declare_property_null (int *,char*,int,int) ;

void spl_register_property( zend_class_entry * class_entry, char *prop_name, int prop_name_len, int prop_flags)
{
 zend_declare_property_null(class_entry, prop_name, prop_name_len, prop_flags);
}

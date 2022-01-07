
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_property_info ;
typedef int zend_class_entry ;


 int reflection_property_factory (int *,int *,int *,int *) ;
 int * zend_string_init (char const*,size_t,int ) ;
 int zend_string_release (int *) ;

__attribute__((used)) static void reflection_property_factory_str(zend_class_entry *ce, const char *name_str, size_t name_len, zend_property_info *prop, zval *object)
{
 zend_string *name = zend_string_init(name_str, name_len, 0);
 reflection_property_factory(ce, name, prop, object);
 zend_string_release(name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_class_entry ;


 scalar_t__ IS_INDIRECT ;
 scalar_t__ Z_TYPE_P (int *) ;
 int add_next_index_zval (int *,int *) ;
 int reflection_property_factory (int *,int *,int *,int *) ;

__attribute__((used)) static void _adddynproperty(zval *ptr, zend_string *key, zend_class_entry *ce, zval *retval)
{
 zval property;




 if (key == ((void*)0)) {
  return;
 }


 if (Z_TYPE_P(ptr) == IS_INDIRECT) {
  return;
 }

 reflection_property_factory(ce, key, ((void*)0), &property);
 add_next_index_zval(retval, &property);
}

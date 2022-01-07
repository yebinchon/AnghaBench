
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;


 int E_NOTICE ;
 int incomplete_class_message (int *,int ) ;

__attribute__((used)) static zval *incomplete_class_write_property(zend_object *object, zend_string *member, zval *value, void **cache_slot)
{
 incomplete_class_message(object, E_NOTICE);
 return value;
}

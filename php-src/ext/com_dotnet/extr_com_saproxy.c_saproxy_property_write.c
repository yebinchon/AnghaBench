
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;


 int E_INVALIDARG ;
 int php_com_throw_exception (int ,char*) ;

__attribute__((used)) static zval *saproxy_property_write(zend_object *object, zend_string *member, zval *value, void **cache_slot)
{
 php_com_throw_exception(E_INVALIDARG, "safearray has no properties");
 return value;
}

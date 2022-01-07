
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ zend_property_info ;
typedef int zend_object ;


 scalar_t__ ZEND_TYPE_IS_SET (int ) ;
 TYPE_1__* zend_get_property_info_for_slot (int *,int *) ;

__attribute__((used)) static inline zend_property_info *zend_get_typed_property_info_for_slot(zend_object *obj, zval *slot)
{
 zend_property_info *prop_info = zend_get_property_info_for_slot(obj, slot);
 if (prop_info && ZEND_TYPE_IS_SET(prop_info->type)) {
  return prop_info;
 }
 return ((void*)0);
}

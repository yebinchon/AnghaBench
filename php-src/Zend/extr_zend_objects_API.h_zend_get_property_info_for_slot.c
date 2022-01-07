
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_property_info ;
struct TYPE_5__ {TYPE_1__* ce; int * properties_table; } ;
typedef TYPE_2__ zend_object ;
struct TYPE_4__ {intptr_t default_properties_count; int ** properties_info_table; } ;


 int ZEND_ASSERT (int) ;

__attribute__((used)) static inline zend_property_info *zend_get_property_info_for_slot(zend_object *obj, zval *slot)
{
 zend_property_info **table = obj->ce->properties_info_table;
 intptr_t prop_num = slot - obj->properties_table;
 ZEND_ASSERT(prop_num >= 0 && prop_num < obj->ce->default_properties_count);
 return table[prop_num];
}

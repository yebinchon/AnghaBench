
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; int name; } ;
typedef TYPE_1__ zend_property_info ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* pemalloc (int,int) ;
 int zend_string_addref (int ) ;
 int zend_type_copy_ctor (int *,int) ;

__attribute__((used)) static zend_property_info *zend_duplicate_property_info_internal(zend_property_info *property_info)
{
 zend_property_info* new_property_info = pemalloc(sizeof(zend_property_info), 1);
 memcpy(new_property_info, property_info, sizeof(zend_property_info));
 zend_string_addref(new_property_info->name);
 zend_type_copy_ctor(&new_property_info->type, 1);

 return new_property_info;
}

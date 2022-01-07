
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name_catcache_id; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectPropertyType ;


 TYPE_1__* get_object_property_data (int ) ;

int
get_object_catcache_name(Oid class_id)
{
 const ObjectPropertyType *prop = get_object_property_data(class_id);

 return prop->name_catcache_id;
}

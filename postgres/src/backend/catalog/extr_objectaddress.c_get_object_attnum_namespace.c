
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attnum_namespace; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectPropertyType ;
typedef int AttrNumber ;


 TYPE_1__* get_object_property_data (int ) ;

AttrNumber
get_object_attnum_namespace(Oid class_id)
{
 const ObjectPropertyType *prop = get_object_property_data(class_id);

 return prop->attnum_namespace;
}

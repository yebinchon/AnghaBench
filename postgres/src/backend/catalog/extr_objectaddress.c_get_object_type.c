
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objtype; } ;
typedef int Oid ;
typedef scalar_t__ ObjectType ;
typedef TYPE_1__ ObjectPropertyType ;


 scalar_t__ OBJECT_TABLE ;
 TYPE_1__* get_object_property_data (int ) ;
 int get_rel_relkind (int ) ;
 scalar_t__ get_relkind_objtype (int ) ;

ObjectType
get_object_type(Oid class_id, Oid object_id)
{
 const ObjectPropertyType *prop = get_object_property_data(class_id);

 if (prop->objtype == OBJECT_TABLE)
 {





  return get_relkind_objtype(get_rel_relkind(object_id));
 }
 else
  return prop->objtype;
}

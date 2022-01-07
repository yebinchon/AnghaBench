
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ class_oid; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ ObjectPropertyType ;


 int ERROR ;
 TYPE_1__ const* ObjectProperty ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*,scalar_t__) ;
 int lengthof (TYPE_1__ const*) ;

__attribute__((used)) static const ObjectPropertyType *
get_object_property_data(Oid class_id)
{
 static const ObjectPropertyType *prop_last = ((void*)0);
 int index;





 if (prop_last && prop_last->class_oid == class_id)
  return prop_last;

 for (index = 0; index < lengthof(ObjectProperty); index++)
 {
  if (ObjectProperty[index].class_oid == class_id)
  {
   prop_last = &ObjectProperty[index];
   return &ObjectProperty[index];
  }
 }

 ereport(ERROR,
   (errmsg_internal("unrecognized class ID: %u", class_id)));

 return ((void*)0);
}

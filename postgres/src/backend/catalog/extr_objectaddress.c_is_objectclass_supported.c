
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ class_oid; } ;
typedef scalar_t__ Oid ;


 TYPE_1__* ObjectProperty ;
 int lengthof (TYPE_1__*) ;

bool
is_objectclass_supported(Oid class_id)
{
 int index;

 for (index = 0; index < lengthof(ObjectProperty); index++)
 {
  if (ObjectProperty[index].class_oid == class_id)
   return 1;
 }

 return 0;
}

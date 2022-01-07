
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ classId; scalar_t__ objectId; scalar_t__ objectSubId; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int numrefs; TYPE_2__* extras; TYPE_3__* refs; } ;
typedef TYPE_1__ ObjectAddresses ;
typedef TYPE_2__ ObjectAddressExtra ;
typedef TYPE_3__ ObjectAddress ;


 int DEPFLAG_SUBOBJECT ;

__attribute__((used)) static bool
object_address_present_add_flags(const ObjectAddress *object,
         int flags,
         ObjectAddresses *addrs)
{
 bool result = 0;
 int i;

 for (i = addrs->numrefs - 1; i >= 0; i--)
 {
  ObjectAddress *thisobj = addrs->refs + i;

  if (object->classId == thisobj->classId &&
   object->objectId == thisobj->objectId)
  {
   if (object->objectSubId == thisobj->objectSubId)
   {
    ObjectAddressExtra *thisextra = addrs->extras + i;

    thisextra->flags |= flags;
    result = 1;
   }
   else if (thisobj->objectSubId == 0)
   {







    result = 1;
   }
   else if (object->objectSubId == 0)
   {
    ObjectAddressExtra *thisextra = addrs->extras + i;

    if (flags)
     thisextra->flags |= (flags | DEPFLAG_SUBOBJECT);
   }
  }
 }

 return result;
}

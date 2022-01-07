
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ classId; scalar_t__ objectId; scalar_t__ objectSubId; } ;
struct TYPE_5__ {int numrefs; TYPE_2__* refs; } ;
typedef TYPE_1__ ObjectAddresses ;
typedef TYPE_2__ ObjectAddress ;



bool
object_address_present(const ObjectAddress *object,
        const ObjectAddresses *addrs)
{
 int i;

 for (i = addrs->numrefs - 1; i >= 0; i--)
 {
  const ObjectAddress *thisobj = addrs->refs + i;

  if (object->classId == thisobj->classId &&
   object->objectId == thisobj->objectId)
  {
   if (object->objectSubId == thisobj->objectSubId ||
    thisobj->objectSubId == 0)
    return 1;
  }
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ classId; scalar_t__ objectId; scalar_t__ objectSubId; } ;
struct TYPE_4__ {int numrefs; TYPE_2__* refs; int extras; } ;
typedef TYPE_1__ ObjectAddresses ;
typedef TYPE_2__ ObjectAddress ;


 int Assert (int) ;
 int object_address_comparator ;
 int qsort (void*,int,int,int ) ;

__attribute__((used)) static void
eliminate_duplicate_dependencies(ObjectAddresses *addrs)
{
 ObjectAddress *priorobj;
 int oldref,
    newrefs;






 Assert(!addrs->extras);

 if (addrs->numrefs <= 1)
  return;


 qsort((void *) addrs->refs, addrs->numrefs, sizeof(ObjectAddress),
    object_address_comparator);


 priorobj = addrs->refs;
 newrefs = 1;
 for (oldref = 1; oldref < addrs->numrefs; oldref++)
 {
  ObjectAddress *thisobj = addrs->refs + oldref;

  if (priorobj->classId == thisobj->classId &&
   priorobj->objectId == thisobj->objectId)
  {
   if (priorobj->objectSubId == thisobj->objectSubId)
    continue;
   if (priorobj->objectSubId == 0)
   {

    priorobj->objectSubId = thisobj->objectSubId;
    continue;
   }
  }

  priorobj++;
  *priorobj = *thisobj;
  newrefs++;
 }

 addrs->numrefs = newrefs;
}

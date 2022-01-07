
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int numrefs; TYPE_2__* extras; int * refs; } ;
typedef int Relation ;
typedef TYPE_1__ ObjectAddresses ;
typedef TYPE_2__ ObjectAddressExtra ;
typedef int ObjectAddress ;


 int DEPFLAG_NORMAL ;
 int DEPFLAG_ORIGINAL ;
 int DEPFLAG_REVERSE ;
 int EventTriggerSQLDropAddObject (int const*,int,int) ;
 scalar_t__ EventTriggerSupportsObjectClass (int ) ;
 int PERFORM_DELETION_INTERNAL ;
 int PERFORM_DELETION_SKIP_ORIGINAL ;
 int deleteOneObject (int *,int *,int) ;
 int getObjectClass (int const*) ;
 scalar_t__ trackDroppedObjectsNeeded () ;

__attribute__((used)) static void
deleteObjectsInList(ObjectAddresses *targetObjects, Relation *depRel,
     int flags)
{
 int i;




 if (trackDroppedObjectsNeeded() && !(flags & PERFORM_DELETION_INTERNAL))
 {
  for (i = 0; i < targetObjects->numrefs; i++)
  {
   const ObjectAddress *thisobj = &targetObjects->refs[i];
   const ObjectAddressExtra *extra = &targetObjects->extras[i];
   bool original = 0;
   bool normal = 0;

   if (extra->flags & DEPFLAG_ORIGINAL)
    original = 1;
   if (extra->flags & DEPFLAG_NORMAL)
    normal = 1;
   if (extra->flags & DEPFLAG_REVERSE)
    normal = 1;

   if (EventTriggerSupportsObjectClass(getObjectClass(thisobj)))
   {
    EventTriggerSQLDropAddObject(thisobj, original, normal);
   }
  }
 }





 for (i = 0; i < targetObjects->numrefs; i++)
 {
  ObjectAddress *thisobj = targetObjects->refs + i;
  ObjectAddressExtra *thisextra = targetObjects->extras + i;

  if ((flags & PERFORM_DELETION_SKIP_ORIGINAL) &&
   (thisextra->flags & DEPFLAG_ORIGINAL))
   continue;

  deleteOneObject(thisobj, depRel, flags);
 }
}

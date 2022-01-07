
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int numrefs; int * refs; } ;
typedef int Relation ;
typedef TYPE_1__ ObjectAddresses ;
typedef int ObjectAddress ;
typedef int DropBehavior ;


 int AcquireDeletionLock (int const*,int) ;
 int DEPFLAG_ORIGINAL ;
 int DependRelationId ;
 int RowExclusiveLock ;
 int deleteObjectsInList (TYPE_1__*,int *,int) ;
 int findDependentObjects (int const*,int ,int,int *,TYPE_1__*,TYPE_1__ const*,int *) ;
 int free_object_addresses (TYPE_1__*) ;
 TYPE_1__* new_object_addresses () ;
 int reportDependentObjects (TYPE_1__*,int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
performMultipleDeletions(const ObjectAddresses *objects,
       DropBehavior behavior, int flags)
{
 Relation depRel;
 ObjectAddresses *targetObjects;
 int i;


 if (objects->numrefs <= 0)
  return;





 depRel = table_open(DependRelationId, RowExclusiveLock);
 targetObjects = new_object_addresses();

 for (i = 0; i < objects->numrefs; i++)
 {
  const ObjectAddress *thisobj = objects->refs + i;





  AcquireDeletionLock(thisobj, flags);

  findDependentObjects(thisobj,
        DEPFLAG_ORIGINAL,
        flags,
        ((void*)0),
        targetObjects,
        objects,
        &depRel);
 }







 reportDependentObjects(targetObjects,
         behavior,
         flags,
         (objects->numrefs == 1 ? objects->refs : ((void*)0)));


 deleteObjectsInList(targetObjects, &depRel, flags);


 free_object_addresses(targetObjects);

 table_close(depRel, RowExclusiveLock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int ObjectAddresses ;
typedef int ObjectAddress ;
typedef int DropBehavior ;


 int AcquireDeletionLock (int const*,int ) ;
 int DEPFLAG_ORIGINAL ;
 int DependRelationId ;
 int RowExclusiveLock ;
 int deleteObjectsInList (int *,int *,int) ;
 int findDependentObjects (int const*,int ,int,int *,int *,int *,int *) ;
 int free_object_addresses (int *) ;
 int * new_object_addresses () ;
 int reportDependentObjects (int *,int ,int,int const*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
performDeletion(const ObjectAddress *object,
    DropBehavior behavior, int flags)
{
 Relation depRel;
 ObjectAddresses *targetObjects;





 depRel = table_open(DependRelationId, RowExclusiveLock);





 AcquireDeletionLock(object, 0);





 targetObjects = new_object_addresses();

 findDependentObjects(object,
       DEPFLAG_ORIGINAL,
       flags,
       ((void*)0),
       targetObjects,
       ((void*)0),
       &depRel);




 reportDependentObjects(targetObjects,
         behavior,
         flags,
         object);


 deleteObjectsInList(targetObjects, &depRel, flags);


 free_object_addresses(targetObjects);

 table_close(depRel, RowExclusiveLock);
}

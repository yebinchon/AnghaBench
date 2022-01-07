
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ classId; int objectId; } ;
typedef TYPE_1__ ObjectAddress ;


 int AccessExclusiveLock ;
 int LockDatabaseObject (scalar_t__,int ,int ,int ) ;
 int LockRelationOid (int ,int ) ;
 int PERFORM_DELETION_CONCURRENTLY ;
 scalar_t__ RelationRelationId ;
 int ShareUpdateExclusiveLock ;

__attribute__((used)) static void
AcquireDeletionLock(const ObjectAddress *object, int flags)
{
 if (object->classId == RelationRelationId)
 {






  if (flags & PERFORM_DELETION_CONCURRENTLY)
   LockRelationOid(object->objectId, ShareUpdateExclusiveLock);
  else
   LockRelationOid(object->objectId, AccessExclusiveLock);
 }
 else
 {

  LockDatabaseObject(object->classId, object->objectId, 0,
         AccessExclusiveLock);
 }
}

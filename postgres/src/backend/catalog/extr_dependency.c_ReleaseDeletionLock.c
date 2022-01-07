
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ classId; int objectId; } ;
typedef TYPE_1__ ObjectAddress ;


 int AccessExclusiveLock ;
 scalar_t__ RelationRelationId ;
 int UnlockDatabaseObject (scalar_t__,int ,int ,int ) ;
 int UnlockRelationOid (int ,int ) ;

__attribute__((used)) static void
ReleaseDeletionLock(const ObjectAddress *object)
{
 if (object->classId == RelationRelationId)
  UnlockRelationOid(object->objectId, AccessExclusiveLock);
 else

  UnlockDatabaseObject(object->classId, object->objectId, 0,
        AccessExclusiveLock);
}

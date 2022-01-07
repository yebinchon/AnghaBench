
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int SharedDependencyType ;
typedef int Relation ;
typedef TYPE_1__ ObjectAddress ;


 int Assert (int) ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int RowExclusiveLock ;
 int SharedDependRelationId ;
 int isSharedObjectPinned (int ,int ,int ) ;
 int shdepAddDependency (int ,int ,int ,scalar_t__,int ,int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
recordSharedDependencyOn(ObjectAddress *depender,
       ObjectAddress *referenced,
       SharedDependencyType deptype)
{
 Relation sdepRel;




 Assert(depender->objectSubId == 0);
 Assert(referenced->objectSubId == 0);





 if (IsBootstrapProcessingMode())
  return;

 sdepRel = table_open(SharedDependRelationId, RowExclusiveLock);


 if (!isSharedObjectPinned(referenced->classId, referenced->objectId,
         sdepRel))
 {
  shdepAddDependency(sdepRel, depender->classId, depender->objectId,
         depender->objectSubId,
         referenced->classId, referenced->objectId,
         deptype);
 }

 table_close(sdepRel, RowExclusiveLock);
}

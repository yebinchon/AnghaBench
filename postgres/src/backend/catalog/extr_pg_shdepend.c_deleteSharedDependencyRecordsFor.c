
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef int Relation ;
typedef int Oid ;


 int InvalidOid ;
 int RowExclusiveLock ;
 int SHARED_DEPENDENCY_INVALID ;
 int SharedDependRelationId ;
 int shdepDropDependency (int ,int ,int ,scalar_t__,int,int ,int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
deleteSharedDependencyRecordsFor(Oid classId, Oid objectId, int32 objectSubId)
{
 Relation sdepRel;

 sdepRel = table_open(SharedDependRelationId, RowExclusiveLock);

 shdepDropDependency(sdepRel, classId, objectId, objectSubId,
      (objectSubId == 0),
      InvalidOid, InvalidOid,
      SHARED_DEPENDENCY_INVALID);

 table_close(sdepRel, RowExclusiveLock);
}

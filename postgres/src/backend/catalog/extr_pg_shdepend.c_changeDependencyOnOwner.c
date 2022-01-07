
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int AuthIdRelationId ;
 int RowExclusiveLock ;
 int SHARED_DEPENDENCY_ACL ;
 int SHARED_DEPENDENCY_OWNER ;
 int SharedDependRelationId ;
 int shdepChangeDep (int ,int ,int ,int ,int ,int ,int ) ;
 int shdepDropDependency (int ,int ,int ,int ,int,int ,int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
changeDependencyOnOwner(Oid classId, Oid objectId, Oid newOwnerId)
{
 Relation sdepRel;

 sdepRel = table_open(SharedDependRelationId, RowExclusiveLock);


 shdepChangeDep(sdepRel,
       classId, objectId, 0,
       AuthIdRelationId, newOwnerId,
       SHARED_DEPENDENCY_OWNER);
 shdepDropDependency(sdepRel, classId, objectId, 0, 1,
      AuthIdRelationId, newOwnerId,
      SHARED_DEPENDENCY_ACL);

 table_close(sdepRel, RowExclusiveLock);
}

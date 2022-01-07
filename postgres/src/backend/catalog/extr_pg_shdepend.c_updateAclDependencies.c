
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Relation ;
typedef scalar_t__ Oid ;


 int AuthIdRelationId ;
 int RowExclusiveLock ;
 int SHARED_DEPENDENCY_ACL ;
 int SharedDependRelationId ;
 int getOidListDiff (scalar_t__*,int*,scalar_t__*,int*) ;
 scalar_t__ isSharedObjectPinned (int ,scalar_t__,int ) ;
 int pfree (scalar_t__*) ;
 int shdepAddDependency (int ,scalar_t__,scalar_t__,int ,int ,scalar_t__,int ) ;
 int shdepDropDependency (int ,scalar_t__,scalar_t__,int ,int,int ,scalar_t__,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
updateAclDependencies(Oid classId, Oid objectId, int32 objsubId,
       Oid ownerId,
       int noldmembers, Oid *oldmembers,
       int nnewmembers, Oid *newmembers)
{
 Relation sdepRel;
 int i;







 getOidListDiff(oldmembers, &noldmembers, newmembers, &nnewmembers);

 if (noldmembers > 0 || nnewmembers > 0)
 {
  sdepRel = table_open(SharedDependRelationId, RowExclusiveLock);


  for (i = 0; i < nnewmembers; i++)
  {
   Oid roleid = newmembers[i];






   if (roleid == ownerId)
    continue;


   if (isSharedObjectPinned(AuthIdRelationId, roleid, sdepRel))
    continue;

   shdepAddDependency(sdepRel, classId, objectId, objsubId,
          AuthIdRelationId, roleid,
          SHARED_DEPENDENCY_ACL);
  }


  for (i = 0; i < noldmembers; i++)
  {
   Oid roleid = oldmembers[i];


   if (roleid == ownerId)
    continue;


   if (isSharedObjectPinned(AuthIdRelationId, roleid, sdepRel))
    continue;

   shdepDropDependency(sdepRel, classId, objectId, objsubId,
        0,
        AuthIdRelationId, roleid,
        SHARED_DEPENDENCY_ACL);
  }

  table_close(sdepRel, RowExclusiveLock);
 }

 if (oldmembers)
  pfree(oldmembers);
 if (newmembers)
  pfree(newmembers);
}

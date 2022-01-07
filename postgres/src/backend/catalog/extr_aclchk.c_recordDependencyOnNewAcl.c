
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;
typedef int Acl ;


 int aclmembers (int *,int **) ;
 int updateAclDependencies (int ,int ,int ,int ,int ,int *,int,int *) ;

void
recordDependencyOnNewAcl(Oid classId, Oid objectId, int32 objsubId,
       Oid ownerId, Acl *acl)
{
 int nmembers;
 Oid *members;


 if (acl == ((void*)0))
  return;


 nmembers = aclmembers(acl, &members);


 updateAclDependencies(classId, objectId, objsubId,
        ownerId,
        0, ((void*)0),
        nmembers, members);
}

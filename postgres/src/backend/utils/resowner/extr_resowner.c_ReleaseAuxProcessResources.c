
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AuxProcessResourceOwner ;
 int RESOURCE_RELEASE_AFTER_LOCKS ;
 int RESOURCE_RELEASE_BEFORE_LOCKS ;
 int RESOURCE_RELEASE_LOCKS ;
 int ResourceOwnerRelease (int ,int ,int,int) ;

void
ReleaseAuxProcessResources(bool isCommit)
{




 ResourceOwnerRelease(AuxProcessResourceOwner,
       RESOURCE_RELEASE_BEFORE_LOCKS,
       isCommit, 1);
 ResourceOwnerRelease(AuxProcessResourceOwner,
       RESOURCE_RELEASE_LOCKS,
       isCommit, 1);
 ResourceOwnerRelease(AuxProcessResourceOwner,
       RESOURCE_RELEASE_AFTER_LOCKS,
       isCommit, 1);
}

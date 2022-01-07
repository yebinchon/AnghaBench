
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ResourceReleasePhase ;
typedef int ResourceOwner ;


 int ResourceOwnerReleaseInternal (int ,int ,int,int) ;

void
ResourceOwnerRelease(ResourceOwner owner,
      ResourceReleasePhase phase,
      bool isCommit,
      bool isTopLevel)
{

 ResourceOwnerReleaseInternal(owner, phase, isCommit, isTopLevel);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int * AuxProcessResourceOwner ;
 int * CurrentResourceOwner ;
 int ReleaseAuxProcessResourcesCallback ;
 int * ResourceOwnerCreate (int *,char*) ;
 int on_shmem_exit (int ,int ) ;

void
CreateAuxProcessResourceOwner(void)
{
 Assert(AuxProcessResourceOwner == ((void*)0));
 Assert(CurrentResourceOwner == ((void*)0));
 AuxProcessResourceOwner = ResourceOwnerCreate(((void*)0), "AuxiliaryProcess");
 CurrentResourceOwner = AuxProcessResourceOwner;





 on_shmem_exit(ReleaseAuxProcessResourcesCallback, 0);

}

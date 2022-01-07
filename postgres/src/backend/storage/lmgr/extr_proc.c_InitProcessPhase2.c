
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int * MyProc ;
 int ProcArrayAdd (int *) ;
 int RemoveProcFromArray ;
 int on_shmem_exit (int ,int ) ;

void
InitProcessPhase2(void)
{
 Assert(MyProc != ((void*)0));




 ProcArrayAdd(MyProc);




 on_shmem_exit(RemoveProcFromArray, 0);
}

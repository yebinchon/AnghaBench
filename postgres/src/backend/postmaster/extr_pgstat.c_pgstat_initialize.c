
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int * BackendStatusArray ;
 int InvalidBackendId ;
 int MaxBackends ;
 int MyAuxProcType ;
 int * MyBEEntry ;
 int MyBackendId ;
 int NotAnAuxProcess ;
 int on_shmem_exit (int ,int ) ;
 int pgstat_beshutdown_hook ;

void
pgstat_initialize(void)
{

 if (MyBackendId != InvalidBackendId)
 {
  Assert(MyBackendId >= 1 && MyBackendId <= MaxBackends);
  MyBEEntry = &BackendStatusArray[MyBackendId - 1];
 }
 else
 {

  Assert(MyAuxProcType != NotAnAuxProcess);
  MyBEEntry = &BackendStatusArray[MaxBackends + MyAuxProcType];
 }


 on_shmem_exit(pgstat_beshutdown_hook, 0);
}

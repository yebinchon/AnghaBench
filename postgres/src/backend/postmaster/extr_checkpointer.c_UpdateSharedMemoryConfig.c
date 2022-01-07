
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG2 ;
 int SyncRepUpdateSyncStandbysDefined () ;
 int UpdateFullPageWrites () ;
 int elog (int ,char*) ;

__attribute__((used)) static void
UpdateSharedMemoryConfig(void)
{

 SyncRepUpdateSyncStandbysDefined();





 UpdateFullPageWrites();

 elog(DEBUG2, "checkpointer updated shared memory configuration values");
}

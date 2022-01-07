
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int DatumGetInt32 (int ) ;
 int IPC_RMID ;
 int LOG ;
 int elog (int ,char*,int ,int ) ;
 scalar_t__ shmctl (int ,int ,int *) ;

__attribute__((used)) static void
IpcMemoryDelete(int status, Datum shmId)
{
 if (shmctl(DatumGetInt32(shmId), IPC_RMID, ((void*)0)) < 0)
  elog(LOG, "shmctl(%d, %d, 0) failed: %m",
    DatumGetInt32(shmId), IPC_RMID);
}

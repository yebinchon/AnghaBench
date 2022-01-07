
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int DatumGetPointer (int ) ;
 int LOG ;
 int elog (int ,char*,int ) ;
 scalar_t__ shmdt (int ) ;

__attribute__((used)) static void
IpcMemoryDetach(int status, Datum shmaddr)
{

 if (shmdt(DatumGetPointer(shmaddr)) < 0)
  elog(LOG, "shmdt(%p) failed: %m", DatumGetPointer(shmaddr));
}

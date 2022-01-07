
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int PGSharedMemoryDetach () ;
 scalar_t__ UsedShmemSegID ;

__attribute__((used)) static void
pgwin32_SharedMemoryDelete(int status, Datum shmId)
{
 Assert(DatumGetPointer(shmId) == UsedShmemSegID);
 PGSharedMemoryDetach();
}

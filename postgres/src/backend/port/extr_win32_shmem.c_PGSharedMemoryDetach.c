
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseHandle (scalar_t__) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LOG ;
 int MEM_RELEASE ;
 int * ShmemProtectiveRegion ;
 int UnmapViewOfFile (int *) ;
 int * UsedShmemSegAddr ;
 scalar_t__ UsedShmemSegID ;
 scalar_t__ VirtualFree (int *,int ,int ) ;
 int elog (int ,char*,int ,...) ;

void
PGSharedMemoryDetach(void)
{




 if (ShmemProtectiveRegion != ((void*)0))
 {
  if (VirtualFree(ShmemProtectiveRegion, 0, MEM_RELEASE) == 0)
   elog(LOG, "failed to release reserved memory region (addr=%p): error code %lu",
     ShmemProtectiveRegion, GetLastError());

  ShmemProtectiveRegion = ((void*)0);
 }


 if (UsedShmemSegAddr != ((void*)0))
 {
  if (!UnmapViewOfFile(UsedShmemSegAddr))
   elog(LOG, "could not unmap view of shared memory: error code %lu",
     GetLastError());

  UsedShmemSegAddr = ((void*)0);
 }


 if (UsedShmemSegID != INVALID_HANDLE_VALUE)
 {
  if (!CloseHandle(UsedShmemSegID))
   elog(LOG, "could not close handle to shared memory: error code %lu",
     GetLastError());

  UsedShmemSegID = INVALID_HANDLE_VALUE;
 }
}

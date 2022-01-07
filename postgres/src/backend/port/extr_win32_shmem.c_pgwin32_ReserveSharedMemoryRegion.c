
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int Assert (int) ;
 int GetLastError () ;
 int LOG ;
 int MEM_RESERVE ;
 int PAGE_NOACCESS ;
 int PAGE_READWRITE ;
 scalar_t__ PROTECTIVE_REGION_SIZE ;
 void* ShmemProtectiveRegion ;
 void* UsedShmemSegAddr ;
 scalar_t__ UsedShmemSegSize ;
 void* VirtualAllocEx (int ,void*,scalar_t__,int ,int ) ;
 int elog (int ,char*,void*,void*,...) ;

int
pgwin32_ReserveSharedMemoryRegion(HANDLE hChild)
{
 void *address;

 Assert(ShmemProtectiveRegion != ((void*)0));
 Assert(UsedShmemSegAddr != ((void*)0));
 Assert(UsedShmemSegSize != 0);


 address = VirtualAllocEx(hChild, ShmemProtectiveRegion,
        PROTECTIVE_REGION_SIZE,
        MEM_RESERVE, PAGE_NOACCESS);
 if (address == ((void*)0))
 {

  elog(LOG, "could not reserve shared memory region (addr=%p) for child %p: error code %lu",
    ShmemProtectiveRegion, hChild, GetLastError());
  return 0;
 }
 if (address != ShmemProtectiveRegion)
 {






  elog(LOG, "reserved shared memory region got incorrect address %p, expected %p",
    address, ShmemProtectiveRegion);
  return 0;
 }


 address = VirtualAllocEx(hChild, UsedShmemSegAddr, UsedShmemSegSize,
        MEM_RESERVE, PAGE_READWRITE);
 if (address == ((void*)0))
 {
  elog(LOG, "could not reserve shared memory region (addr=%p) for child %p: error code %lu",
    UsedShmemSegAddr, hChild, GetLastError());
  return 0;
 }
 if (address != UsedShmemSegAddr)
 {
  elog(LOG, "reserved shared memory region got incorrect address %p, expected %p",
    address, UsedShmemSegAddr);
  return 0;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int totalsize; int freeoffset; scalar_t__ dsm_control; int magic; int creatorPID; } ;
typedef int Size ;
typedef int SIZE_T ;
typedef TYPE_1__ PGShmemHeader ;
typedef int * HANDLE ;
typedef int DWORD ;


 int Assert (int) ;
 int CloseHandle (int *) ;
 int * CreateFileMapping (int ,int *,int,int,int,char*) ;
 int DEBUG1 ;
 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int ,int *,int ,int **,int ,int ,int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR_ALREADY_EXISTS ;
 int ERROR_NO_SYSTEM_RESOURCES ;
 int EnableLockPagesPrivilege (int ) ;
 int FATAL ;
 int FILE_MAP_READ ;
 int FILE_MAP_WRITE ;
 int GetCurrentProcess () ;
 int GetLargePageMinimum () ;
 int GetLastError () ;
 char* GetSharedMemName () ;
 scalar_t__ HUGE_PAGES_ON ;
 scalar_t__ HUGE_PAGES_TRY ;
 int INVALID_HANDLE_VALUE ;
 int LOG ;
 int MAXALIGN (int) ;
 int MEM_RESERVE ;
 void* MapViewOfFileEx (int *,int,int ,int ,int ,int *) ;
 int PAGE_NOACCESS ;
 int PAGE_READWRITE ;
 int PGShmemMagic ;
 int PROTECTIVE_REGION_SIZE ;
 int PointerGetDatum (int *) ;
 int SEC_COMMIT ;
 int SEC_LARGE_PAGES ;
 int SetLastError (int ) ;
 int * ShmemProtectiveRegion ;
 int Sleep (int) ;
 int TRUE ;
 int * UsedShmemSegAddr ;
 int * UsedShmemSegID ;
 int UsedShmemSegSize ;
 int * VirtualAlloc (int *,int ,int ,int ) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int free (char*) ;
 int getpid () ;
 scalar_t__ huge_pages ;
 int on_shmem_exit (int ,int ) ;
 int pgwin32_SharedMemoryDelete ;

PGShmemHeader *
PGSharedMemoryCreate(Size size,
      PGShmemHeader **shim)
{
 void *memAddress;
 PGShmemHeader *hdr;
 HANDLE hmap,
    hmap2;
 char *szShareMem;
 int i;
 DWORD size_high;
 DWORD size_low;
 SIZE_T largePageSize = 0;
 Size orig_size = size;
 DWORD flProtect = PAGE_READWRITE;

 ShmemProtectiveRegion = VirtualAlloc(((void*)0), PROTECTIVE_REGION_SIZE,
           MEM_RESERVE, PAGE_NOACCESS);
 if (ShmemProtectiveRegion == ((void*)0))
  elog(FATAL, "could not reserve memory region: error code %lu",
    GetLastError());


 Assert(size > MAXALIGN(sizeof(PGShmemHeader)));

 szShareMem = GetSharedMemName();

 UsedShmemSegAddr = ((void*)0);

 if (huge_pages == HUGE_PAGES_ON || huge_pages == HUGE_PAGES_TRY)
 {

  largePageSize = GetLargePageMinimum();
  if (largePageSize == 0)
  {
   ereport(huge_pages == HUGE_PAGES_ON ? FATAL : DEBUG1,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("the processor does not support large pages")));
   ereport(DEBUG1,
     (errmsg("disabling huge pages")));
  }
  else if (!EnableLockPagesPrivilege(huge_pages == HUGE_PAGES_ON ? FATAL : DEBUG1))
  {
   ereport(DEBUG1,
     (errmsg("disabling huge pages")));
  }
  else
  {

   flProtect = PAGE_READWRITE | SEC_COMMIT | SEC_LARGE_PAGES;


   if (size % largePageSize != 0)
    size += largePageSize - (size % largePageSize);
  }
 }

retry:



 size_high = 0;

 size_low = (DWORD) size;







 for (i = 0; i < 10; i++)
 {




  SetLastError(0);

  hmap = CreateFileMapping(INVALID_HANDLE_VALUE,
         ((void*)0),
         flProtect,
         size_high,
         size_low,
         szShareMem);

  if (!hmap)
  {
   if (GetLastError() == ERROR_NO_SYSTEM_RESOURCES &&
    huge_pages == HUGE_PAGES_TRY &&
    (flProtect & SEC_LARGE_PAGES) != 0)
   {
    elog(DEBUG1, "CreateFileMapping(%zu) with SEC_LARGE_PAGES failed, "
      "huge pages disabled",
      size);





    size = orig_size;
    flProtect = PAGE_READWRITE;
    goto retry;
   }
   else
    ereport(FATAL,
      (errmsg("could not create shared memory segment: error code %lu", GetLastError()),
       errdetail("Failed system call was CreateFileMapping(size=%zu, name=%s).",
           size, szShareMem)));
  }





  if (GetLastError() == ERROR_ALREADY_EXISTS)
  {
   CloseHandle(hmap);

   hmap = ((void*)0);
   Sleep(1000);
   continue;
  }
  break;
 }





 if (!hmap)
  ereport(FATAL,
    (errmsg("pre-existing shared memory block is still in use"),
     errhint("Check if there are any old server processes still running, and terminate them.")));

 free(szShareMem);




 if (!DuplicateHandle(GetCurrentProcess(), hmap, GetCurrentProcess(), &hmap2, 0, TRUE, DUPLICATE_SAME_ACCESS))
  ereport(FATAL,
    (errmsg("could not create shared memory segment: error code %lu", GetLastError()),
     errdetail("Failed system call was DuplicateHandle.")));





 if (!CloseHandle(hmap))
  elog(LOG, "could not close handle to shared memory: error code %lu", GetLastError());






 memAddress = MapViewOfFileEx(hmap2, FILE_MAP_WRITE | FILE_MAP_READ, 0, 0, 0, ((void*)0));
 if (!memAddress)
  ereport(FATAL,
    (errmsg("could not create shared memory segment: error code %lu", GetLastError()),
     errdetail("Failed system call was MapViewOfFileEx.")));
 hdr = (PGShmemHeader *) memAddress;
 hdr->creatorPID = getpid();
 hdr->magic = PGShmemMagic;




 hdr->totalsize = size;
 hdr->freeoffset = MAXALIGN(sizeof(PGShmemHeader));
 hdr->dsm_control = 0;


 UsedShmemSegAddr = memAddress;
 UsedShmemSegSize = size;
 UsedShmemSegID = hmap2;


 on_shmem_exit(pgwin32_SharedMemoryDelete, PointerGetDatum(hmap2));

 *shim = hdr;
 return hdr;
}

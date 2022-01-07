
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct stat {scalar_t__ st_ino; int st_dev; } ;
struct TYPE_7__ {void* freeoffset; void* totalsize; scalar_t__ inode; int device; scalar_t__ dsm_control; int magic; int creatorPID; } ;
typedef void* Size ;
typedef TYPE_1__ PGShmemHeader ;
typedef int IpcMemoryState ;
typedef scalar_t__ IpcMemoryKey ;
typedef scalar_t__ IpcMemoryId ;
typedef int Datum ;


 int * AnonymousShmem ;
 int AnonymousShmemDetach ;
 void* AnonymousShmemSize ;
 int Assert (int) ;
 int * CreateAnonymousSegment (void**) ;
 int DataDir ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_LOCK_FILE_EXISTS ;
 int ERROR ;
 int FATAL ;
 scalar_t__ HUGE_PAGES_ON ;
 int IPC_RMID ;
 void* InternalIpcMemoryCreate (scalar_t__,void*) ;
 int LOG ;
 void* MAXALIGN (int) ;
 int PGSharedMemoryAttach (scalar_t__,int *,TYPE_1__**) ;
 int PGShmemMagic ;
 scalar_t__ SHMEM_TYPE_MMAP ;





 void* UsedShmemSegAddr ;
 unsigned long UsedShmemSegID ;
 int dsm_cleanup_using_control_segment (scalar_t__) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errhint (char*,int ) ;
 int errmsg (char*,...) ;
 int getpid () ;
 scalar_t__ huge_pages ;
 int memcpy (int *,TYPE_1__*,int) ;
 int on_shmem_exit (int ,int ) ;
 scalar_t__ shared_memory_type ;
 int shmctl (scalar_t__,int ,int *) ;
 scalar_t__ shmdt (TYPE_1__*) ;
 scalar_t__ shmget (scalar_t__,int,int ) ;
 scalar_t__ stat (int ,struct stat*) ;

PGShmemHeader *
PGSharedMemoryCreate(Size size,
      PGShmemHeader **shim)
{
 IpcMemoryKey NextShmemSegID;
 void *memAddress;
 PGShmemHeader *hdr;
 struct stat statbuf;
 Size sysvsize;






 if (stat(DataDir, &statbuf) < 0)
  ereport(FATAL,
    (errcode_for_file_access(),
     errmsg("could not stat data directory \"%s\": %m",
      DataDir)));



 if (huge_pages == HUGE_PAGES_ON)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("huge pages not supported on this platform")));



 Assert(size > MAXALIGN(sizeof(PGShmemHeader)));

 if (shared_memory_type == SHMEM_TYPE_MMAP)
 {
  AnonymousShmem = CreateAnonymousSegment(&size);
  AnonymousShmemSize = size;


  on_shmem_exit(AnonymousShmemDetach, (Datum) 0);


  sysvsize = sizeof(PGShmemHeader);
 }
 else
  sysvsize = size;







 NextShmemSegID = statbuf.st_ino;

 for (;;)
 {
  IpcMemoryId shmid;
  PGShmemHeader *oldhdr;
  IpcMemoryState state;


  memAddress = InternalIpcMemoryCreate(NextShmemSegID, sysvsize);
  if (memAddress)
   break;
  shmid = shmget(NextShmemSegID, sizeof(PGShmemHeader), 0);
  if (shmid < 0)
  {
   oldhdr = ((void*)0);
   state = 129;
  }
  else
   state = PGSharedMemoryAttach(shmid, ((void*)0), &oldhdr);

  switch (state)
  {
   case 132:
   case 131:
    ereport(FATAL,
      (errcode(ERRCODE_LOCK_FILE_EXISTS),
       errmsg("pre-existing shared memory block (key %lu, ID %lu) is still in use",
        (unsigned long) NextShmemSegID,
        (unsigned long) shmid),
       errhint("Terminate any old server processes associated with data directory \"%s\".",
         DataDir)));
    break;
   case 130:






    elog(LOG,
      "shared memory block (key %lu, ID %lu) deleted during startup",
      (unsigned long) NextShmemSegID,
      (unsigned long) shmid);
    break;
   case 129:
    NextShmemSegID++;
    break;
   case 128:
    if (oldhdr->dsm_control != 0)
     dsm_cleanup_using_control_segment(oldhdr->dsm_control);
    if (shmctl(shmid, IPC_RMID, ((void*)0)) < 0)
     NextShmemSegID++;
    break;
  }

  if (oldhdr && shmdt(oldhdr) < 0)
   elog(LOG, "shmdt(%p) failed: %m", oldhdr);
 }


 hdr = (PGShmemHeader *) memAddress;
 hdr->creatorPID = getpid();
 hdr->magic = PGShmemMagic;
 hdr->dsm_control = 0;


 hdr->device = statbuf.st_dev;
 hdr->inode = statbuf.st_ino;




 hdr->totalsize = size;
 hdr->freeoffset = MAXALIGN(sizeof(PGShmemHeader));
 *shim = hdr;


 UsedShmemSegAddr = memAddress;
 UsedShmemSegID = (unsigned long) NextShmemSegID;







 if (AnonymousShmem == ((void*)0))
  return hdr;
 memcpy(AnonymousShmem, hdr, sizeof(PGShmemHeader));
 return (PGShmemHeader *) AnonymousShmem;
}

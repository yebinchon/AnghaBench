
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * index; } ;
struct TYPE_4__ {scalar_t__ size; void* location; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__ ShmemIndexEnt ;
typedef TYPE_2__ PGShmemHeader ;


 int Assert (int) ;
 scalar_t__ CACHELINEALIGN (void*) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int HASH_ENTER_NULL ;
 int HASH_REMOVE ;
 scalar_t__ IsUnderPostmaster ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int ShmemAddrIsValid (void*) ;
 void* ShmemAlloc (scalar_t__) ;
 void* ShmemAllocNoError (scalar_t__) ;
 int ShmemIndex ;
 int ShmemIndexLock ;
 TYPE_2__* ShmemSegHdr ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 scalar_t__ hash_search (int ,char const*,int ,int*) ;
 scalar_t__ strcmp (char const*,char*) ;

void *
ShmemInitStruct(const char *name, Size size, bool *foundPtr)
{
 ShmemIndexEnt *result;
 void *structPtr;

 LWLockAcquire(ShmemIndexLock, LW_EXCLUSIVE);

 if (!ShmemIndex)
 {
  PGShmemHeader *shmemseghdr = ShmemSegHdr;


  Assert(strcmp(name, "ShmemIndex") == 0);

  if (IsUnderPostmaster)
  {

   Assert(shmemseghdr->index != ((void*)0));
   structPtr = shmemseghdr->index;
   *foundPtr = 1;
  }
  else
  {
   Assert(shmemseghdr->index == ((void*)0));
   structPtr = ShmemAlloc(size);
   shmemseghdr->index = structPtr;
   *foundPtr = 0;
  }
  LWLockRelease(ShmemIndexLock);
  return structPtr;
 }


 result = (ShmemIndexEnt *)
  hash_search(ShmemIndex, name, HASH_ENTER_NULL, foundPtr);

 if (!result)
 {
  LWLockRelease(ShmemIndexLock);
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("could not create ShmemIndex entry for data structure \"%s\"",
      name)));
 }

 if (*foundPtr)
 {





  if (result->size != size)
  {
   LWLockRelease(ShmemIndexLock);
   ereport(ERROR,
     (errmsg("ShmemIndex entry size is wrong for data structure"
       " \"%s\": expected %zu, actual %zu",
       name, size, result->size)));
  }
  structPtr = result->location;
 }
 else
 {

  structPtr = ShmemAllocNoError(size);
  if (structPtr == ((void*)0))
  {

   hash_search(ShmemIndex, name, HASH_REMOVE, ((void*)0));
   LWLockRelease(ShmemIndexLock);
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("not enough shared memory for data structure"
       " \"%s\" (%zu bytes requested)",
       name, size)));
  }
  result->size = size;
  result->location = structPtr;
 }

 LWLockRelease(ShmemIndexLock);

 Assert(ShmemAddrIsValid(structPtr));

 Assert(structPtr == (void *) CACHELINEALIGN(structPtr));

 return structPtr;
}

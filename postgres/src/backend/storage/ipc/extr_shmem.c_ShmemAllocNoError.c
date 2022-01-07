
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ freeoffset; scalar_t__ totalsize; } ;
typedef scalar_t__ Size ;


 int Assert (int) ;
 scalar_t__ CACHELINEALIGN (void*) ;
 scalar_t__ ShmemBase ;
 int ShmemLock ;
 TYPE_1__* ShmemSegHdr ;
 int SpinLockAcquire (int ) ;
 int SpinLockRelease (int ) ;

void *
ShmemAllocNoError(Size size)
{
 Size newStart;
 Size newFree;
 void *newSpace;
 size = CACHELINEALIGN(size);

 Assert(ShmemSegHdr != ((void*)0));

 SpinLockAcquire(ShmemLock);

 newStart = ShmemSegHdr->freeoffset;

 newFree = newStart + size;
 if (newFree <= ShmemSegHdr->totalsize)
 {
  newSpace = (void *) ((char *) ShmemBase + newStart);
  ShmemSegHdr->freeoffset = newFree;
 }
 else
  newSpace = ((void*)0);

 SpinLockRelease(ShmemLock);


 Assert(newSpace == (void *) CACHELINEALIGN(newSpace));

 return newSpace;
}

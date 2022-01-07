
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ freeoffset; scalar_t__ totalsize; } ;
typedef scalar_t__ Size ;


 int Assert (int) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 scalar_t__ MAXALIGN (void*) ;
 scalar_t__ ShmemBase ;
 TYPE_1__* ShmemSegHdr ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__) ;

void *
ShmemAllocUnlocked(Size size)
{
 Size newStart;
 Size newFree;
 void *newSpace;




 size = MAXALIGN(size);

 Assert(ShmemSegHdr != ((void*)0));

 newStart = ShmemSegHdr->freeoffset;

 newFree = newStart + size;
 if (newFree > ShmemSegHdr->totalsize)
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of shared memory (%zu bytes requested)",
      size)));
 ShmemSegHdr->freeoffset = newFree;

 newSpace = (void *) ((char *) ShmemBase + newStart);

 Assert(newSpace == (void *) MAXALIGN(newSpace));

 return newSpace;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WPARAM ;
typedef int USHORT ;
struct TYPE_11__ {size_t BlockCount; scalar_t__ Granularity; scalar_t__ Blocks; } ;
struct TYPE_10__ {size_t index; int dwAddress; int dwSize; TYPE_1__* extraInfo; } ;
struct TYPE_9__ {int flags; int size; int extra; scalar_t__ address; } ;
struct TYPE_8__ {scalar_t__ granularity; scalar_t__ unusedBytes; } ;
typedef size_t SIZE_T ;
typedef TYPE_1__* PHeapBlockExtraInfo ;
typedef TYPE_2__* PHeapBlockBasicInfo ;
typedef TYPE_3__* PHeapBlock ;
typedef TYPE_4__* PDEBUG_HEAP_INFORMATION ;


 int EXTRA_FLAG ;
 int UPDATE_FLAGS (TYPE_3__*,int) ;
 int r_return_val_if_fail (int,int) ;

__attribute__((used)) static bool GetNextHeapBlock(PDEBUG_HEAP_INFORMATION heapInfo, PHeapBlock hb) {
 r_return_val_if_fail (heapInfo && hb, 0);
 PHeapBlockBasicInfo block;

 block = (PHeapBlockBasicInfo)heapInfo->Blocks;
 SIZE_T index = hb->index;

 if (index > heapInfo->BlockCount) {
  return 0;
 }

 if (block[index].flags & 2) {
  do {
   if (index > heapInfo->BlockCount) {
    return 0;
   }


   hb->dwAddress = (void *)(block[index].address + heapInfo->Granularity);

   index++;
   hb->dwSize = block->size;
  } while (block[index].flags & 2);
  hb->index = index;
 } else {
  hb->dwSize = block[index].size;
  if (block[index].extra & EXTRA_FLAG) {
   PHeapBlockExtraInfo extra = (PHeapBlockExtraInfo)(block[index].extra & ~EXTRA_FLAG);
   hb->extraInfo = extra;
   hb->dwSize -= extra->unusedBytes;
   hb->dwAddress = (void *)(block[index].address + extra->granularity);
  } else {
   hb->extraInfo = ((void*)0);
   hb->dwAddress = (WPARAM)hb->dwAddress + hb->dwSize;
  }
  hb->index++;
 }

 WPARAM flags;
 if (block[index].extra & EXTRA_FLAG) {
  flags = block[index].flags;
 } else {
  flags = (USHORT)block[index].flags;
 }
 UPDATE_FLAGS (hb, flags);

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nFreeBlocks; int blocksSorted; long* freeBlocks; int nBlocksAllocated; } ;
typedef TYPE_1__ LogicalTapeSet ;


 int freeBlocks_cmp ;
 int qsort (void*,size_t,int,int ) ;

__attribute__((used)) static long
ltsGetFreeBlock(LogicalTapeSet *lts)
{





 if (lts->nFreeBlocks > 0)
 {
  if (!lts->blocksSorted)
  {
   qsort((void *) lts->freeBlocks, lts->nFreeBlocks,
      sizeof(long), freeBlocks_cmp);
   lts->blocksSorted = 1;
  }
  return lts->freeBlocks[--lts->nFreeBlocks];
 }
 else
  return lts->nBlocksAllocated++;
}

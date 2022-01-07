
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nFreeBlocks; int freeBlocksLen; long* freeBlocks; int blocksSorted; scalar_t__ forgetFreeSpace; } ;
typedef TYPE_1__ LogicalTapeSet ;


 scalar_t__ repalloc (long*,int) ;

__attribute__((used)) static void
ltsReleaseBlock(LogicalTapeSet *lts, long blocknum)
{
 int ndx;




 if (lts->forgetFreeSpace)
  return;




 if (lts->nFreeBlocks >= lts->freeBlocksLen)
 {
  lts->freeBlocksLen *= 2;
  lts->freeBlocks = (long *) repalloc(lts->freeBlocks,
           lts->freeBlocksLen * sizeof(long));
 }





 ndx = lts->nFreeBlocks++;
 lts->freeBlocks[ndx] = blocknum;
 if (ndx > 0 && lts->freeBlocks[ndx - 1] < blocknum)
  lts->blocksSorted = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nFreeBlocks; int freeBlocksLen; long* freeBlocks; } ;
typedef TYPE_1__ GISTBuildBuffers ;


 scalar_t__ repalloc (long*,int) ;

__attribute__((used)) static void
gistBuffersReleaseBlock(GISTBuildBuffers *gfbb, long blocknum)
{
 int ndx;


 if (gfbb->nFreeBlocks >= gfbb->freeBlocksLen)
 {
  gfbb->freeBlocksLen *= 2;
  gfbb->freeBlocks = (long *) repalloc(gfbb->freeBlocks,
            gfbb->freeBlocksLen *
            sizeof(long));
 }


 ndx = gfbb->nFreeBlocks++;
 gfbb->freeBlocks[ndx] = blocknum;
}

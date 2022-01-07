
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nFreeBlocks; long* freeBlocks; int nFileBlocks; } ;
typedef TYPE_1__ GISTBuildBuffers ;



__attribute__((used)) static long
gistBuffersGetFreeBlock(GISTBuildBuffers *gfbb)
{





 if (gfbb->nFreeBlocks > 0)
  return gfbb->freeBlocks[--gfbb->nFreeBlocks];
 else
  return gfbb->nFileBlocks++;
}

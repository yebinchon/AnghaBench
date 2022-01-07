
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int pfile; } ;
struct TYPE_9__ {scalar_t__ blocksCount; int pageBlocknum; scalar_t__ pageBuffer; } ;
typedef TYPE_1__ GISTNodeBuffer ;
typedef TYPE_2__ GISTBuildBuffers ;


 int InvalidBlockNumber ;
 int ReadTempFileBlock (int ,int ,scalar_t__) ;
 int gistAddLoadedBuffer (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ gistAllocateNewPageBuffer (TYPE_2__*) ;
 int gistBuffersReleaseBlock (TYPE_2__*,int ) ;

__attribute__((used)) static void
gistLoadNodeBuffer(GISTBuildBuffers *gfbb, GISTNodeBuffer *nodeBuffer)
{

 if (!nodeBuffer->pageBuffer && nodeBuffer->blocksCount > 0)
 {

  nodeBuffer->pageBuffer = gistAllocateNewPageBuffer(gfbb);


  ReadTempFileBlock(gfbb->pfile, nodeBuffer->pageBlocknum,
        nodeBuffer->pageBuffer);


  gistBuffersReleaseBlock(gfbb, nodeBuffer->pageBlocknum);


  gistAddLoadedBuffer(gfbb, nodeBuffer);
  nodeBuffer->pageBlocknum = InvalidBlockNumber;
 }
}

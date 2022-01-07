
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ prev; } ;
struct TYPE_13__ {int pfile; } ;
struct TYPE_12__ {scalar_t__ blocksCount; TYPE_3__* pageBuffer; } ;
typedef int IndexTuple ;
typedef TYPE_1__ GISTNodeBuffer ;
typedef TYPE_2__ GISTBuildBuffers ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ PAGE_IS_EMPTY (TYPE_3__*) ;
 int ReadTempFileBlock (int ,scalar_t__,TYPE_3__*) ;
 int gistBuffersReleaseBlock (TYPE_2__*,scalar_t__) ;
 int gistGetItupFromPage (TYPE_3__*,int *) ;
 int gistLoadNodeBuffer (TYPE_2__*,TYPE_1__*) ;
 int pfree (TYPE_3__*) ;

bool
gistPopItupFromNodeBuffer(GISTBuildBuffers *gfbb, GISTNodeBuffer *nodeBuffer,
        IndexTuple *itup)
{



 if (nodeBuffer->blocksCount <= 0)
  return 0;


 if (!nodeBuffer->pageBuffer)
  gistLoadNodeBuffer(gfbb, nodeBuffer);




 gistGetItupFromPage(nodeBuffer->pageBuffer, itup);





 if (PAGE_IS_EMPTY(nodeBuffer->pageBuffer))
 {
  BlockNumber prevblkno;




  nodeBuffer->blocksCount--;




  prevblkno = nodeBuffer->pageBuffer->prev;
  if (prevblkno != InvalidBlockNumber)
  {

   Assert(nodeBuffer->blocksCount > 0);
   ReadTempFileBlock(gfbb->pfile, prevblkno, nodeBuffer->pageBuffer);





   gistBuffersReleaseBlock(gfbb, prevblkno);
  }
  else
  {

   Assert(nodeBuffer->blocksCount == 0);
   pfree(nodeBuffer->pageBuffer);
   nodeBuffer->pageBuffer = ((void*)0);
  }
 }
 return 1;
}

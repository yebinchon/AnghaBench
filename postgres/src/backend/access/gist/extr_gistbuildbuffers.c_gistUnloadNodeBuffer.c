
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pfile; } ;
struct TYPE_6__ {int pageBlocknum; int * pageBuffer; } ;
typedef TYPE_1__ GISTNodeBuffer ;
typedef TYPE_2__ GISTBuildBuffers ;
typedef int BlockNumber ;


 int WriteTempFileBlock (int ,int ,int *) ;
 int gistBuffersGetFreeBlock (TYPE_2__*) ;
 int pfree (int *) ;

__attribute__((used)) static void
gistUnloadNodeBuffer(GISTBuildBuffers *gfbb, GISTNodeBuffer *nodeBuffer)
{

 if (nodeBuffer->pageBuffer)
 {
  BlockNumber blkno;


  blkno = gistBuffersGetFreeBlock(gfbb);


  WriteTempFileBlock(gfbb->pfile, blkno, nodeBuffer->pageBuffer);


  pfree(nodeBuffer->pageBuffer);
  nodeBuffer->pageBuffer = ((void*)0);


  nodeBuffer->pageBlocknum = blkno;
 }
}

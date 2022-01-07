
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ bufferEmptyingQueue; } ;
struct TYPE_12__ {TYPE_1__* giststate; TYPE_4__* gfbb; } ;
struct TYPE_11__ {int queuedForEmptying; int level; int nodeBlocknum; } ;
struct TYPE_10__ {int tempCxt; } ;
typedef int IndexTuple ;
typedef TYPE_2__ GISTNodeBuffer ;
typedef TYPE_3__ GISTBuildState ;
typedef TYPE_4__ GISTBuildBuffers ;


 int MemoryContextReset (int ) ;
 scalar_t__ NIL ;
 int gistPopItupFromNodeBuffer (TYPE_4__*,TYPE_2__*,int *) ;
 scalar_t__ gistProcessItup (TYPE_3__*,int ,int ,int ) ;
 int gistUnloadNodeBuffers (TYPE_4__*) ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ list_delete_first (scalar_t__) ;

__attribute__((used)) static void
gistProcessEmptyingQueue(GISTBuildState *buildstate)
{
 GISTBuildBuffers *gfbb = buildstate->gfbb;


 while (gfbb->bufferEmptyingQueue != NIL)
 {
  GISTNodeBuffer *emptyingNodeBuffer;


  emptyingNodeBuffer = (GISTNodeBuffer *) linitial(gfbb->bufferEmptyingQueue);
  gfbb->bufferEmptyingQueue = list_delete_first(gfbb->bufferEmptyingQueue);
  emptyingNodeBuffer->queuedForEmptying = 0;





  gistUnloadNodeBuffers(gfbb);
  while (1)
  {
   IndexTuple itup;


   if (!gistPopItupFromNodeBuffer(gfbb, emptyingNodeBuffer, &itup))
    break;
   if (gistProcessItup(buildstate, itup, emptyingNodeBuffer->nodeBlocknum, emptyingNodeBuffer->level))
   {




    break;
   }


   MemoryContextReset(buildstate->giststate->tempCxt);
  }
 }
}

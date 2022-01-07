
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int buffersOnLevelsLen; scalar_t__* buffersOnLevels; int bufferEmptyingQueue; int context; } ;
struct TYPE_10__ {TYPE_1__* giststate; TYPE_4__* gfbb; } ;
struct TYPE_9__ {scalar_t__ blocksCount; int queuedForEmptying; } ;
struct TYPE_8__ {int tempCxt; } ;
typedef int MemoryContext ;
typedef TYPE_2__ GISTNodeBuffer ;
typedef TYPE_3__ GISTBuildState ;
typedef TYPE_4__ GISTBuildBuffers ;


 int DEBUG2 ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ NIL ;
 int elog (int ,char*,int) ;
 int gistProcessEmptyingQueue (TYPE_3__*) ;
 int lcons (TYPE_2__*,int ) ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ list_delete_first (scalar_t__) ;

__attribute__((used)) static void
gistEmptyAllBuffers(GISTBuildState *buildstate)
{
 GISTBuildBuffers *gfbb = buildstate->gfbb;
 MemoryContext oldCtx;
 int i;

 oldCtx = MemoryContextSwitchTo(buildstate->giststate->tempCxt);




 for (i = gfbb->buffersOnLevelsLen - 1; i >= 0; i--)
 {







  while (gfbb->buffersOnLevels[i] != NIL)
  {
   GISTNodeBuffer *nodeBuffer;

   nodeBuffer = (GISTNodeBuffer *) linitial(gfbb->buffersOnLevels[i]);

   if (nodeBuffer->blocksCount != 0)
   {




    if (!nodeBuffer->queuedForEmptying)
    {
     MemoryContextSwitchTo(gfbb->context);
     nodeBuffer->queuedForEmptying = 1;
     gfbb->bufferEmptyingQueue =
      lcons(nodeBuffer, gfbb->bufferEmptyingQueue);
     MemoryContextSwitchTo(buildstate->giststate->tempCxt);
    }
    gistProcessEmptyingQueue(buildstate);
   }
   else
    gfbb->buffersOnLevels[i] =
     list_delete_first(gfbb->buffersOnLevels[i]);
  }
  elog(DEBUG2, "emptied all buffers at level %d", i);
 }
 MemoryContextSwitchTo(oldCtx);
}

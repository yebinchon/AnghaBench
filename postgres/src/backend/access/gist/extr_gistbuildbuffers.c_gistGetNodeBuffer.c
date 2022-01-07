
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int buffersOnLevelsLen; int ** buffersOnLevels; int context; int nodeBuffersTab; } ;
struct TYPE_6__ {int queuedForEmptying; int isTemp; int level; int * pageBuffer; int pageBlocknum; scalar_t__ blocksCount; } ;
typedef int MemoryContext ;
typedef int List ;
typedef int GISTSTATE ;
typedef TYPE_1__ GISTNodeBuffer ;
typedef TYPE_2__ GISTBuildBuffers ;
typedef int BlockNumber ;


 int HASH_ENTER ;
 int InvalidBlockNumber ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 scalar_t__ hash_search (int ,void const*,int ,int*) ;
 int * lcons (TYPE_1__*,int *) ;
 scalar_t__ repalloc (int **,int) ;

GISTNodeBuffer *
gistGetNodeBuffer(GISTBuildBuffers *gfbb, GISTSTATE *giststate,
      BlockNumber nodeBlocknum, int level)
{
 GISTNodeBuffer *nodeBuffer;
 bool found;


 nodeBuffer = (GISTNodeBuffer *) hash_search(gfbb->nodeBuffersTab,
            (const void *) &nodeBlocknum,
            HASH_ENTER,
            &found);
 if (!found)
 {



  MemoryContext oldcxt = MemoryContextSwitchTo(gfbb->context);


  nodeBuffer->blocksCount = 0;
  nodeBuffer->pageBlocknum = InvalidBlockNumber;
  nodeBuffer->pageBuffer = ((void*)0);
  nodeBuffer->queuedForEmptying = 0;
  nodeBuffer->isTemp = 0;
  nodeBuffer->level = level;





  if (level >= gfbb->buffersOnLevelsLen)
  {
   int i;

   gfbb->buffersOnLevels =
    (List **) repalloc(gfbb->buffersOnLevels,
           (level + 1) * sizeof(List *));


   for (i = gfbb->buffersOnLevelsLen; i <= level; i++)
    gfbb->buffersOnLevels[i] = NIL;
   gfbb->buffersOnLevelsLen = level + 1;
  }
  gfbb->buffersOnLevels[level] = lcons(nodeBuffer,
            gfbb->buffersOnLevels[level]);

  MemoryContextSwitchTo(oldcxt);
 }

 return nodeBuffer;
}

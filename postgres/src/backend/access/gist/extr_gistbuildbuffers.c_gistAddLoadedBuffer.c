
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t loadedBuffersCount; size_t loadedBuffersLen; TYPE_1__** loadedBuffers; } ;
struct TYPE_6__ {scalar_t__ isTemp; } ;
typedef TYPE_1__ GISTNodeBuffer ;
typedef TYPE_2__ GISTBuildBuffers ;


 scalar_t__ repalloc (TYPE_1__**,int) ;

__attribute__((used)) static void
gistAddLoadedBuffer(GISTBuildBuffers *gfbb, GISTNodeBuffer *nodeBuffer)
{

 if (nodeBuffer->isTemp)
  return;


 if (gfbb->loadedBuffersCount >= gfbb->loadedBuffersLen)
 {
  gfbb->loadedBuffersLen *= 2;
  gfbb->loadedBuffers = (GISTNodeBuffer **)
   repalloc(gfbb->loadedBuffers,
      gfbb->loadedBuffersLen * sizeof(GISTNodeBuffer *));
 }

 gfbb->loadedBuffers[gfbb->loadedBuffersCount] = nodeBuffer;
 gfbb->loadedBuffersCount++;
}

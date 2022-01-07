
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int loadedBuffersCount; int * loadedBuffers; } ;
typedef TYPE_1__ GISTBuildBuffers ;


 int gistUnloadNodeBuffer (TYPE_1__*,int ) ;

void
gistUnloadNodeBuffers(GISTBuildBuffers *gfbb)
{
 int i;


 for (i = 0; i < gfbb->loadedBuffersCount; i++)
  gistUnloadNodeBuffer(gfbb, gfbb->loadedBuffers[i]);


 gfbb->loadedBuffersCount = 0;
}

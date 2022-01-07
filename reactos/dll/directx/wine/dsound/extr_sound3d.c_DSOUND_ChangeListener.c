
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ds3db_need_recalc; } ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_6__ {int nrofbuffers; TYPE_4__** buffers; } ;
typedef TYPE_2__ IDirectSound3DListenerImpl ;


 int DSOUND_Mix3DBuffer (TYPE_4__*) ;
 int TRACE (char*,TYPE_2__*) ;

__attribute__((used)) static void DSOUND_ChangeListener(IDirectSound3DListenerImpl *ds3dl)
{
 int i;
 TRACE("(%p)\n",ds3dl);
 for (i = 0; i < ds3dl->device->nrofbuffers; i++)
 {

  if (ds3dl->device->buffers[i]->ds3db_need_recalc)
  {
   DSOUND_Mix3DBuffer(ds3dl->device->buffers[i]);
  }
 }
}

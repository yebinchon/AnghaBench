
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pack_buffer; } ;
typedef TYPE_1__ gs_stagesurf_t ;


 int bfree (TYPE_1__*) ;
 int gl_delete_buffers (int,scalar_t__*) ;

void gs_stagesurface_destroy(gs_stagesurf_t *stagesurf)
{
 if (stagesurf) {
  if (stagesurf->pack_buffer)
   gl_delete_buffers(1, &stagesurf->pack_buffer);

  bfree(stagesurf);
 }
}

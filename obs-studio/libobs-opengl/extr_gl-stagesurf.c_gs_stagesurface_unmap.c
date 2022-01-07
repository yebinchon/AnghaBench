
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pack_buffer; } ;
typedef TYPE_1__ gs_stagesurf_t ;


 int GL_PIXEL_PACK_BUFFER ;
 int glUnmapBuffer (int ) ;
 int gl_bind_buffer (int ,int ) ;
 int gl_success (char*) ;

void gs_stagesurface_unmap(gs_stagesurf_t *stagesurf)
{
 if (!gl_bind_buffer(GL_PIXEL_PACK_BUFFER, stagesurf->pack_buffer))
  return;

 glUnmapBuffer(GL_PIXEL_PACK_BUFFER);
 gl_success("glUnmapBuffer");

 gl_bind_buffer(GL_PIXEL_PACK_BUFFER, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int bytes_per_pixel; int width; int pack_buffer; } ;
typedef TYPE_1__ gs_stagesurf_t ;


 int GL_PIXEL_PACK_BUFFER ;
 int GL_READ_ONLY ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int * glMapBuffer (int ,int ) ;
 int gl_bind_buffer (int ,int ) ;
 int gl_success (char*) ;

bool gs_stagesurface_map(gs_stagesurf_t *stagesurf, uint8_t **data,
    uint32_t *linesize)
{
 if (!gl_bind_buffer(GL_PIXEL_PACK_BUFFER, stagesurf->pack_buffer))
  goto fail;

 *data = glMapBuffer(GL_PIXEL_PACK_BUFFER, GL_READ_ONLY);
 if (!gl_success("glMapBuffer"))
  goto fail;

 gl_bind_buffer(GL_PIXEL_PACK_BUFFER, 0);

 *linesize = stagesurf->bytes_per_pixel * stagesurf->width;
 return 1;

fail:
 blog(LOG_ERROR, "stagesurf_map (GL) failed");
 return 0;
}

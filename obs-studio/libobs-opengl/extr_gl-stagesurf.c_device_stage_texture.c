
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int texture; } ;
struct gs_texture_2d {TYPE_1__ base; } ;
typedef int gs_texture_t ;
struct TYPE_6__ {int gl_type; int gl_format; int pack_buffer; } ;
typedef TYPE_2__ gs_stagesurf_t ;
typedef int gs_device_t ;


 int GL_PIXEL_PACK_BUFFER ;
 int GL_TEXTURE_2D ;
 int LOG_ERROR ;
 int UNUSED_PARAMETER (int *) ;
 int blog (int ,char*) ;
 int can_stage (TYPE_2__*,struct gs_texture_2d*) ;
 int glGetTexImage (int ,int ,int ,int ,int ) ;
 int gl_bind_buffer (int ,int ) ;
 int gl_bind_texture (int ,int ) ;
 int gl_success (char*) ;

void device_stage_texture(gs_device_t *device, gs_stagesurf_t *dst,
     gs_texture_t *src)
{
 struct gs_texture_2d *tex2d = (struct gs_texture_2d *)src;
 if (!can_stage(dst, tex2d))
  goto failed;

 if (!gl_bind_buffer(GL_PIXEL_PACK_BUFFER, dst->pack_buffer))
  goto failed;
 if (!gl_bind_texture(GL_TEXTURE_2D, tex2d->base.texture))
  goto failed;

 glGetTexImage(GL_TEXTURE_2D, 0, dst->gl_format, dst->gl_type, 0);
 if (!gl_success("glGetTexImage"))
  goto failed;

 gl_bind_texture(GL_TEXTURE_2D, 0);
 gl_bind_buffer(GL_PIXEL_PACK_BUFFER, 0);
 return;

failed:
 gl_bind_buffer(GL_PIXEL_PACK_BUFFER, 0);
 gl_bind_texture(GL_TEXTURE_2D, 0);
 blog(LOG_ERROR, "device_stage_texture (GL) failed");

 UNUSED_PARAMETER(device);
}

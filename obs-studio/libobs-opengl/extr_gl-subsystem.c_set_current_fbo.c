
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fbo_info {int * cur_zstencil_buffer; int * cur_render_target; int fbo; } ;
struct TYPE_3__ {struct fbo_info* cur_fbo; } ;
typedef TYPE_1__ gs_device_t ;
typedef int GLuint ;


 int GL_DRAW_FRAMEBUFFER ;
 int gl_bind_framebuffer (int ,int ) ;

__attribute__((used)) static bool set_current_fbo(gs_device_t *device, struct fbo_info *fbo)
{
 if (device->cur_fbo != fbo) {
  GLuint fbo_obj = fbo ? fbo->fbo : 0;
  if (!gl_bind_framebuffer(GL_DRAW_FRAMEBUFFER, fbo_obj))
   return 0;

  if (device->cur_fbo) {
   device->cur_fbo->cur_render_target = ((void*)0);
   device->cur_fbo->cur_zstencil_buffer = ((void*)0);
  }
 }

 device->cur_fbo = fbo;
 return 1;
}

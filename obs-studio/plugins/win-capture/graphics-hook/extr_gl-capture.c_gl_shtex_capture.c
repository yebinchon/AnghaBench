
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dxgi_swap; int gl_dxobj; int gl_device; int texture; } ;
typedef int GLint ;


 int GL_DRAW_FRAMEBUFFER ;
 int GL_DRAW_FRAMEBUFFER_BINDING ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_BINDING_2D ;
 int IDXGISwapChain_Present (int ,int ,int ) ;
 TYPE_1__ data ;
 int glBindFramebuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glGetIntegerv (int ,int *) ;
 int gl_copy_backbuffer (int ) ;
 scalar_t__ gl_error (char*,char*) ;
 int jimglDXLockObjectsNV (int ,int,int *) ;
 int jimglDXUnlockObjectsNV (int ,int,int *) ;

__attribute__((used)) static void gl_shtex_capture(void)
{
 GLint last_fbo;
 GLint last_tex;

 jimglDXLockObjectsNV(data.gl_device, 1, &data.gl_dxobj);

 glGetIntegerv(GL_DRAW_FRAMEBUFFER_BINDING, &last_fbo);
 if (gl_error("gl_shtex_capture", "failed to get last fbo")) {
  return;
 }

 glGetIntegerv(GL_TEXTURE_BINDING_2D, &last_tex);
 if (gl_error("gl_shtex_capture", "failed to get last texture")) {
  return;
 }

 gl_copy_backbuffer(data.texture);

 glBindTexture(GL_TEXTURE_2D, last_tex);
 glBindFramebuffer(GL_DRAW_FRAMEBUFFER, last_fbo);

 jimglDXUnlockObjectsNV(data.gl_device, 1, &data.gl_dxobj);

 IDXGISwapChain_Present(data.dxgi_swap, 0, 0);
}

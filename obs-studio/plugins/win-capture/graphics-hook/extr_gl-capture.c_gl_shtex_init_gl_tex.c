
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gl_dxobj; int texture; int d3d11_tex; int gl_device; int d3d11_device; } ;


 int GL_TEXTURE_2D ;
 int WGL_ACCESS_WRITE_DISCARD_NV ;
 TYPE_1__ data ;
 int glGenTextures (int,int *) ;
 scalar_t__ gl_error (char*,char*) ;
 int hlog (char*) ;
 int jimglDXOpenDeviceNV (int ) ;
 int jimglDXRegisterObjectNV (int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline bool gl_shtex_init_gl_tex(void)
{
 data.gl_device = jimglDXOpenDeviceNV(data.d3d11_device);
 if (!data.gl_device) {
  hlog("gl_shtex_init_gl_tex: failed to open device");
  return 0;
 }

 glGenTextures(1, &data.texture);
 if (gl_error("gl_shtex_init_gl_tex", "failed to generate texture")) {
  return 0;
 }

 data.gl_dxobj = jimglDXRegisterObjectNV(data.gl_device, data.d3d11_tex,
      data.texture, GL_TEXTURE_2D,
      WGL_ACCESS_WRITE_DISCARD_NV);
 if (!data.gl_dxobj) {
  hlog("gl_shtex_init_gl_tex: failed to register object");
  return 0;
 }

 return 1;
}

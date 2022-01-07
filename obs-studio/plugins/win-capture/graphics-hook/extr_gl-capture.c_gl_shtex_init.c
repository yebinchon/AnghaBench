
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ handle; int format; int cy; int cx; int base_cy; int base_cx; int shtex_info; } ;
typedef int HWND ;


 int capture_init_shtex (int *,int ,int ,int ,int ,int ,int ,int,uintptr_t) ;
 TYPE_1__ data ;
 int gl_init_fbo () ;
 int gl_shtex_init_d3d11 () ;
 int gl_shtex_init_d3d11_tex () ;
 int gl_shtex_init_gl_tex () ;
 int gl_shtex_init_window () ;
 int hlog (char*) ;

__attribute__((used)) static bool gl_shtex_init(HWND window)
{
 if (!gl_shtex_init_window()) {
  return 0;
 }
 if (!gl_shtex_init_d3d11()) {
  return 0;
 }
 if (!gl_shtex_init_d3d11_tex()) {
  return 0;
 }
 if (!gl_shtex_init_gl_tex()) {
  return 0;
 }
 if (!gl_init_fbo()) {
  return 0;
 }
 if (!capture_init_shtex(&data.shtex_info, window, data.base_cx,
    data.base_cy, data.cx, data.cy, data.format,
    1, (uintptr_t)data.handle)) {
  return 0;
 }

 hlog("gl shared texture capture successful");
 return 1;
}

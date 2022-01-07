
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fbo_info {int dummy; } ;
typedef int gs_zstencil_t ;
typedef int gs_texture_t ;
struct TYPE_4__ {int cur_render_side; int * cur_zstencil_buffer; int * cur_render_target; } ;
typedef TYPE_1__ gs_device_t ;


 int attach_rendertarget (struct fbo_info*,int *,int) ;
 int attach_zstencil (struct fbo_info*,int *) ;
 struct fbo_info* get_fbo_by_tex (int *) ;
 int set_current_fbo (TYPE_1__*,struct fbo_info*) ;

__attribute__((used)) static bool set_target(gs_device_t *device, gs_texture_t *tex, int side,
         gs_zstencil_t *zs)
{
 struct fbo_info *fbo;

 if (device->cur_render_target == tex &&
     device->cur_zstencil_buffer == zs &&
     device->cur_render_side == side)
  return 1;

 device->cur_render_target = tex;
 device->cur_render_side = side;
 device->cur_zstencil_buffer = zs;

 if (!tex)
  return set_current_fbo(device, ((void*)0));

 fbo = get_fbo_by_tex(tex);
 if (!fbo)
  return 0;

 set_current_fbo(device, fbo);

 if (!attach_rendertarget(fbo, tex, side))
  return 0;
 if (!attach_zstencil(fbo, zs))
  return 0;

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_zstencil_t ;
struct TYPE_4__ {scalar_t__ type; int is_render_target; } ;
typedef TYPE_1__ gs_texture_t ;
typedef int gs_device_t ;


 scalar_t__ GS_TEXTURE_CUBE ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int set_target (int *,TYPE_1__*,int,int *) ;

void device_set_cube_render_target(gs_device_t *device, gs_texture_t *cubetex,
       int side, gs_zstencil_t *zstencil)
{
 if (cubetex) {
  if (cubetex->type != GS_TEXTURE_CUBE) {
   blog(LOG_ERROR, "Texture is not a cube texture");
   goto fail;
  }

  if (!cubetex->is_render_target) {
   blog(LOG_ERROR, "Texture is not a render target");
   goto fail;
  }
 }

 if (!set_target(device, cubetex, side, zstencil))
  goto fail;

 return;

fail:
 blog(LOG_ERROR, "device_set_cube_render_target (GL) failed");
}

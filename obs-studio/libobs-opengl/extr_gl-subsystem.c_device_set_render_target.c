
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_zstencil_t ;
struct TYPE_4__ {scalar_t__ type; int is_render_target; } ;
typedef TYPE_1__ gs_texture_t ;
typedef int gs_device_t ;


 scalar_t__ GS_TEXTURE_2D ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int set_target (int *,TYPE_1__*,int ,int *) ;

void device_set_render_target(gs_device_t *device, gs_texture_t *tex,
         gs_zstencil_t *zstencil)
{
 if (tex) {
  if (tex->type != GS_TEXTURE_2D) {
   blog(LOG_ERROR, "Texture is not a 2D texture");
   goto fail;
  }

  if (!tex->is_render_target) {
   blog(LOG_ERROR, "Texture is not a render target");
   goto fail;
  }
 }

 if (!set_target(device, tex, 0, zstencil))
  goto fail;

 return;

fail:
 blog(LOG_ERROR, "device_set_render_target (GL) failed");
}

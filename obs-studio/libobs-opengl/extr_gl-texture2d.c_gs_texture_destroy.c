
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct gs_texture_2d {scalar_t__ unpack_buffer; } ;
struct TYPE_5__ {scalar_t__ fbo; scalar_t__ texture; scalar_t__ is_dynamic; int is_dummy; scalar_t__ cur_sampler; } ;
typedef TYPE_1__ gs_texture_t ;


 int bfree (TYPE_1__*) ;
 int fbo_info_destroy (scalar_t__) ;
 int gl_delete_buffers (int,scalar_t__*) ;
 int gl_delete_textures (int,scalar_t__*) ;
 int gs_samplerstate_destroy (scalar_t__) ;
 int is_texture_2d (TYPE_1__*,char*) ;

void gs_texture_destroy(gs_texture_t *tex)
{
 struct gs_texture_2d *tex2d = (struct gs_texture_2d *)tex;
 if (!tex)
  return;

 if (!is_texture_2d(tex, "gs_texture_destroy"))
  return;

 if (tex->cur_sampler)
  gs_samplerstate_destroy(tex->cur_sampler);

 if (!tex->is_dummy && tex->is_dynamic && tex2d->unpack_buffer)
  gl_delete_buffers(1, &tex2d->unpack_buffer);

 if (tex->texture)
  gl_delete_textures(1, &tex->texture);

 if (tex->fbo)
  fbo_info_destroy(tex->fbo);

 bfree(tex);
}

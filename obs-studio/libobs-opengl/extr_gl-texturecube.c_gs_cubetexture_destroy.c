
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fbo; scalar_t__ texture; } ;
typedef TYPE_1__ gs_texture_t ;


 int bfree (TYPE_1__*) ;
 int fbo_info_destroy (scalar_t__) ;
 int gl_delete_textures (int,scalar_t__*) ;

void gs_cubetexture_destroy(gs_texture_t *tex)
{
 if (!tex)
  return;

 if (tex->texture)
  gl_delete_textures(1, &tex->texture);

 if (tex->fbo)
  fbo_info_destroy(tex->fbo);

 bfree(tex);
}

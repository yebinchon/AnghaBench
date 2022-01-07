
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gl_target; } ;
struct gs_texture_2d {TYPE_1__ base; } ;
typedef int gs_texture_t ;


 scalar_t__ GL_TEXTURE_RECTANGLE ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int is_texture_2d (int const*,char*) ;

bool gs_texture_is_rect(const gs_texture_t *tex)
{
 const struct gs_texture_2d *tex2d = (const struct gs_texture_2d *)tex;
 if (!is_texture_2d(tex, "gs_texture_unmap")) {
  blog(LOG_ERROR, "gs_texture_is_rect (GL) failed");
  return 0;
 }

 return tex2d->base.gl_target == GL_TEXTURE_RECTANGLE;
}

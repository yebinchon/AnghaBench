
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct gs_texture_cube {int size; } ;
struct gs_texture_2d {int height; int width; } ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ gs_texture_t ;


 scalar_t__ GS_TEXTURE_2D ;
 scalar_t__ GS_TEXTURE_CUBE ;
 int LOG_ERROR ;
 int blog (int ,char*) ;

__attribute__((used)) static bool get_tex_dimensions(gs_texture_t *tex, uint32_t *width,
          uint32_t *height)
{
 if (tex->type == GS_TEXTURE_2D) {
  struct gs_texture_2d *tex2d = (struct gs_texture_2d *)tex;
  *width = tex2d->width;
  *height = tex2d->height;
  return 1;

 } else if (tex->type == GS_TEXTURE_CUBE) {
  struct gs_texture_cube *cube = (struct gs_texture_cube *)tex;
  *width = cube->size;
  *height = cube->size;
  return 1;
 }

 blog(LOG_ERROR, "Texture must be 2D or cubemap");
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_texture_2d {int height; } ;
typedef int gs_texture_t ;


 int is_texture_2d (int const*,char*) ;

uint32_t gs_texture_get_height(const gs_texture_t *tex)
{
 const struct gs_texture_2d *tex2d = (const struct gs_texture_2d *)tex;
 if (!is_texture_2d(tex, "gs_texture_get_height"))
  return 0;

 return tex2d->height;
}

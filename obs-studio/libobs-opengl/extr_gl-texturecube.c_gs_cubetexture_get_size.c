
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_texture_cube {int size; } ;
typedef int gs_texture_t ;


 int is_texture_cube (int const*,char*) ;

uint32_t gs_cubetexture_get_size(const gs_texture_t *cubetex)
{
 const struct gs_texture_cube *cube =
  (const struct gs_texture_cube *)cubetex;

 if (!is_texture_cube(cubetex, "gs_cubetexture_get_size"))
  return 0;

 return cube->size;
}

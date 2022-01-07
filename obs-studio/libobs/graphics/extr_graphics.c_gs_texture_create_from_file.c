
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int gs_texture_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int bfree (int *) ;
 int * gs_create_texture_file_data (char const*,int*,int *,int *) ;
 int * gs_texture_create (int ,int ,int,int,int const**,int ) ;

gs_texture_t *gs_texture_create_from_file(const char *file)
{
 enum gs_color_format format;
 uint32_t cx;
 uint32_t cy;
 uint8_t *data = gs_create_texture_file_data(file, &format, &cx, &cy);
 gs_texture_t *tex = ((void*)0);

 if (data) {
  tex = gs_texture_create(cx, cy, format, 1,
     (const uint8_t **)&data, 0);
  bfree(data);
 }

 return tex;
}

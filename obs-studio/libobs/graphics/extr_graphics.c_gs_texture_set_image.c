
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
typedef int gs_texture_t ;


 scalar_t__ gs_texture_get_height (int *) ;
 int gs_texture_map (int *,int **,int*) ;
 int gs_texture_unmap (int *) ;
 int gs_valid_p2 (char*,int *,int const*) ;
 int memcpy (int *,int const*,int) ;

void gs_texture_set_image(gs_texture_t *tex, const uint8_t *data,
     uint32_t linesize, bool flip)
{
 uint8_t *ptr;
 uint32_t linesize_out;
 uint32_t row_copy;
 int32_t height;
 int32_t y;

 if (!gs_valid_p2("gs_texture_set_image", tex, data))
  return;

 height = (int32_t)gs_texture_get_height(tex);

 if (!gs_texture_map(tex, &ptr, &linesize_out))
  return;

 row_copy = (linesize < linesize_out) ? linesize : linesize_out;

 if (flip) {
  for (y = height - 1; y >= 0; y--)
   memcpy(ptr + (uint32_t)y * linesize_out,
          data + (uint32_t)(height - y - 1) * linesize,
          row_copy);

 } else if (linesize == linesize_out) {
  memcpy(ptr, data, row_copy * height);

 } else {
  for (y = 0; y < height; y++)
   memcpy(ptr + (uint32_t)y * linesize_out,
          data + (uint32_t)y * linesize, row_copy);
 }

 gs_texture_unmap(tex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline void fill_texture(uint32_t *pixels, uint32_t color)
{
 size_t x, y;

 for (y = 0; y < 20; y++) {
  for (x = 0; x < 20; x++) {
   pixels[y * 20 + x] = color;
  }
 }
}

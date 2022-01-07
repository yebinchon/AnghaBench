
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int min_uint32 (int const,int) ;

void decompress_nv12(const uint8_t *const input[], const uint32_t in_linesize[],
       uint32_t start_y, uint32_t end_y, uint8_t *output,
       uint32_t out_linesize)
{
 uint32_t start_y_d2 = start_y / 2;
 uint32_t width_d2 = min_uint32(in_linesize[0], out_linesize) / 2;
 uint32_t height_d2 = end_y / 2;
 uint32_t y;

 for (y = start_y_d2; y < height_d2; y++) {
  const uint16_t *chroma;
  register const uint8_t *lum0, *lum1;
  register uint32_t *output0, *output1;
  uint32_t x;

  chroma = (const uint16_t *)(input[1] + y * in_linesize[1]);
  lum0 = input[0] + y * 2 * in_linesize[0];
  lum1 = lum0 + in_linesize[0];
  output0 = (uint32_t *)(output + y * 2 * out_linesize);
  output1 = (uint32_t *)((uint8_t *)output0 + out_linesize);

  for (x = 0; x < width_d2; x++) {
   uint32_t out = *(chroma++) << 8;

   *(output0++) = *(lum0++) | out;
   *(output0++) = *(lum0++) | out;

   *(output1++) = *(lum1++) | out;
   *(output1++) = *(lum1++) | out;
  }
 }
}

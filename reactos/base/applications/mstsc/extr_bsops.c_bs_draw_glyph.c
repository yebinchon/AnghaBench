
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bs_is_pixel_on (char*,int,int,int,int) ;
 int bs_set_pixel (int,int,int,int,int) ;

void
bs_draw_glyph(int x, int y, char * glyph_data, int glyph_width,
              int glyph_height, int fgcolour)
{
  int i;
  int j;

  for (i = 0; i < glyph_height; i++)
  {
    for (j = 0; j < glyph_width; j++)
    {
      if (bs_is_pixel_on(glyph_data, j, i, glyph_width, 8))
      {
        bs_set_pixel(x + j, y + i, fgcolour, 12, 1);
      }
    }
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
bs_set_pixel_on(char * data, int x, int y, int width, int bpp,
                int pixel)
{
  int start;
  int shift;

  if (bpp == 1)
  {
    width = (width + 7) / 8;
    start = (y * width) + x / 8;
    shift = x % 8;
    if (pixel != 0)
    {
      data[start] = data[start] | (0x80 >> shift);
    }
    else
    {
      data[start] = data[start] & ~(0x80 >> shift);
    }
  }
  else if (bpp == 8)
  {
    data[y * width + x] = pixel;
  }
  else if (bpp == 15 || bpp == 16)
  {
    ((unsigned short *) data)[y * width + x] = pixel;
  }
  else if (bpp == 24 || bpp == 32)
  {
    ((unsigned int *) data)[y * width + x] = (unsigned int) pixel;
  }
}

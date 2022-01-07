
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
bs_is_pixel_on(char * data, int x, int y, int width, int bpp)
{
  int start;
  int shift;

  if (bpp == 1)
  {
    width = (width + 7) / 8;
    start = (y * width) + x / 8;
    shift = x % 8;
    return (data[start] & (0x80 >> shift)) != 0;
  }
  else if (bpp == 8)
  {
    return data[y * width + x] != 0;
  }
  else if (bpp == 15 || bpp == 16)
  {
    return data[(y * 2) * width + (x * 2)] != 0 ||
           data[(y * 2) * width + (x * 2) + 1] != 0;
  }
  else if (bpp == 24 || bpp == 32)
  {
    return data[(y * 4) * width + (x * 4)] != 0 ||
           data[(y * 4) * width + (x * 4) + 1] != 0 ||
           data[(y * 4) * width + (x * 4) + 2] != 0 ||
           data[(y * 4) * width + (x * 4) + 3] != 0;
  }
  else
  {
    return 0;
  }
}

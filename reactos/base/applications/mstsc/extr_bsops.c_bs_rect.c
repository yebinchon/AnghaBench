
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bs_set_pixel (int,int,int,int,int ) ;
 scalar_t__ bs_warp_coords (int*,int*,int*,int*,int ,int ) ;
 int g_Bpp ;
 scalar_t__ get_bs_ptr (int,int) ;

void
bs_rect(int x, int y, int cx, int cy, int colour, int rop)
{
  int i;
  int j;
  unsigned char * p8;
  unsigned short * p16;
  unsigned int * p32;

  if (bs_warp_coords(&x, &y, &cx, &cy, 0, 0))
  {
    if (rop == 0)
    {
      rop = 12;
      colour = 0;
    }
    else if (rop == 15)
    {
      rop = 12;
      colour = 0xffffff;
    }
    if (rop == 12)
    {
      if (g_Bpp == 1)
      {
        for (i = 0; i < cy; i++)
        {
          p8 = (unsigned char *) get_bs_ptr(x, y + i);
          if (p8 != 0)
          {
            for (j = 0; j < cx; j++)
            {
              *p8 = colour;
              p8++;
            }
          }
        }
      }
      else if (g_Bpp == 2)
      {
        for (i = 0; i < cy; i++)
        {
          p16 = (unsigned short *) get_bs_ptr(x, y + i);
          if (p16 != 0)
          {
            for (j = 0; j < cx; j++)
            {
              *p16 = colour;
              p16++;
            }
          }
        }
      }
      else
      {
        for (i = 0; i < cy; i++)
        {
          p32 = (unsigned int *) get_bs_ptr(x, y + i);
          if (p32 != 0)
          {
            for (j = 0; j < cx; j++)
            {
              *p32 = colour;
              p32++;
            }
          }
        }
      }
    }
    else
    {
      for (i = 0; i < cy; i++)
      {
        for (j = 0; j < cx; j++)
        {
          bs_set_pixel(j + x, i + y, colour, rop, 0);
        }
      }
    }
  }
}

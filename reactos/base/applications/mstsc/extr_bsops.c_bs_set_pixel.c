
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bs_do_rop (int,int,int ) ;
 int bs_get_pixel (int,int) ;
 int g_Bpp ;
 char* g_bs ;
 int g_clip_bottom1 ;
 int g_clip_left1 ;
 int g_clip_right1 ;
 int g_clip_top1 ;
 int g_height1 ;
 int g_width1 ;

void
bs_set_pixel(int x, int y, int pixel, int rop, int use_clip)
{
  char * p;

  if (!use_clip ||
        (x >= g_clip_left1 && x < g_clip_right1 &&
         y >= g_clip_top1 && y < g_clip_bottom1))
  {
    if (x >= 0 && x < g_width1 && y >= 0 && y < g_height1)
    {
      p = g_bs + (y * g_width1 * g_Bpp) + (x * g_Bpp);
      if (rop != 12)
      {
        pixel = bs_do_rop(rop, pixel, bs_get_pixel(x, y));
      }
      if (g_Bpp == 1)
      {
        *((unsigned char *) p) = pixel;
      }
      else if (g_Bpp == 2)
      {
        *((unsigned short *) p) = pixel;
      }
      else
      {
        *((unsigned int *) p) = pixel;
      }
    }
  }
}

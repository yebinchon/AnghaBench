
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (scalar_t__) ;
 int g_Bpp ;
 int g_bpp ;
 scalar_t__ g_bs ;
 int g_bs_size ;
 int g_clip_bottom1 ;
 scalar_t__ g_clip_left1 ;
 int g_clip_right1 ;
 scalar_t__ g_clip_top1 ;
 int g_height1 ;
 int g_width1 ;
 scalar_t__ malloc (int) ;
 int memset (scalar_t__,int ,int) ;

void
bs_init(int width, int height, int bpp)
{
  if (g_bs != 0)
  {
    free(g_bs);
  }
  g_width1 = width;
  g_height1 = height;
  g_bpp = bpp;
  g_Bpp = (bpp + 7) / 8;
  g_bs_size = width * height * g_Bpp;
  g_bs = malloc(g_bs_size);
  memset(g_bs, 0, g_bs_size);
  g_clip_left1 = 0;
  g_clip_top1 = 0;
  g_clip_right1 = width;
  g_clip_bottom1 = height;
}

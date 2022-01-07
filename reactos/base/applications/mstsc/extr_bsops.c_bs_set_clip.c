
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_clip_bottom1 ;
 int g_clip_left1 ;
 int g_clip_right1 ;
 int g_clip_top1 ;

void
bs_set_clip(int x, int y, int cx, int cy)
{
  g_clip_left1 = x;
  g_clip_top1 = y;
  g_clip_right1 = x + cx;
  g_clip_bottom1 = y + cy;
}

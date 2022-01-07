
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_clip_bottom1 ;
 scalar_t__ g_clip_left1 ;
 int g_clip_right1 ;
 scalar_t__ g_clip_top1 ;
 int g_height1 ;
 int g_width1 ;

void
bs_reset_clip(void)
{
  g_clip_left1 = 0;
  g_clip_top1 = 0;
  g_clip_right1 = g_width1;
  g_clip_bottom1 = g_height1;
}

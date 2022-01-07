
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bs_reset_clip () ;
 int mi_reset_clip () ;

void
ui_reset_clip(void)
{
  bs_reset_clip();
  mi_reset_clip();
}

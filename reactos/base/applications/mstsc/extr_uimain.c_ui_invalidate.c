
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bs_copy_box (char*,int,int,int,int,int) ;
 scalar_t__ bs_warp_coords (int*,int*,int*,int*,int ,int ) ;
 int g_server_depth ;
 int mi_paint_rect (char*,int,int,int,int,int,int) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

void
ui_invalidate(int x, int y, int cx, int cy)
{
  char * data;

  if (cx < 1 || cy < 1)
  {
    return;
  }
  if (bs_warp_coords(&x, &y, &cx, &cy, 0, 0))
  {
    cx = (cx + 3) & ~3;
    data = (char *) xmalloc(cx * cy * 4);
    bs_copy_box(data, x, y, cx, cy, cx * ((g_server_depth + 7) / 8));
    mi_paint_rect(data, cx, cy, x, y, cx, cy);
    xfree(data);
  }
}

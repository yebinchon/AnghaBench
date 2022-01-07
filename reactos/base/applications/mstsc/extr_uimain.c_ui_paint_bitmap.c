
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct bitmap {int width; int height; int * data; } ;


 int ui_memblt (int,int,int,int,int,struct bitmap*,int ,int ) ;

void
ui_paint_bitmap(int x, int y, int cx, int cy,
                int width, int height, uint8 * data)
{
  struct bitmap b;

  b.width = width;
  b.height = height;
  b.data = data;
  ui_memblt(12, x, y, cx, cy, &b, 0, 0);
}

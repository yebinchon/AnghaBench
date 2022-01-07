
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {int height; int width; scalar_t__ data; } ;


 int bs_draw_glyph (int,int,char*,int ,int ,int) ;

__attribute__((used)) static void
draw_glyph(int x, int y, void * glyph, int fgcolor)
{
  struct bitmap * b;

  b = glyph;
  bs_draw_glyph(x, y, (char *)b->data, b->width, b->height, fgcolor);
}

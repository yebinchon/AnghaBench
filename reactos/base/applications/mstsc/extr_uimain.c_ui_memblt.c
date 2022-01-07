
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct bitmap {int height; int width; int data; } ;


 int bs_memblt (int ,int,int,int,int,int ,int ,int ,int,int) ;
 int ui_invalidate (int,int,int,int) ;

void
ui_memblt(uint8 opcode, int x, int y, int cx, int cy,
          void * src, int srcx, int srcy)
{
  struct bitmap* b;

  b = (struct bitmap*)src;
  bs_memblt(opcode, x, y, cx, cy, b->data, b->width, b->height,
            srcx, srcy);
  ui_invalidate(x, y, cx, cy);
}

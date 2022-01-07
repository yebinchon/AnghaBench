
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdPointPtr ;
typedef int gdImagePtr ;
struct TYPE_3__ {int x; int y; } ;


 int gdImageLine (int ,int,int,int,int,int) ;

void gdImageOpenPolygon (gdImagePtr im, gdPointPtr p, int n, int c)
{
 int i;
 int lx, ly;

 if (n <= 0) {
  return;
 }

 lx = p->x;
 ly = p->y;
 for (i = 1; i < n; i++) {
  p++;
  gdImageLine(im, lx, ly, p->x, p->y, c);
  lx = p->x;
  ly = p->y;
 }
}

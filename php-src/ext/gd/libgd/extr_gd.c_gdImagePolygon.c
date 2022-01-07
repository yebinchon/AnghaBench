
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gdPointPtr ;
typedef int gdImagePtr ;
struct TYPE_4__ {int y; int x; } ;


 int gdImageLine (int ,int ,int ,int ,int ,int) ;
 int gdImageOpenPolygon (int ,TYPE_1__*,int,int) ;

void gdImagePolygon (gdImagePtr im, gdPointPtr p, int n, int c)
{
 if (n <= 0) {
  return;
 }


 gdImageLine (im, p->x, p->y, p[n - 1].x, p[n - 1].y, c);
 gdImageOpenPolygon (im, p, n, c);
}

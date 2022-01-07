
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ NVGpoint ;


 scalar_t__ nvg__triarea2 (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static float nvg__polyArea(NVGpoint* pts, int npts)
{
 int i;
 float area = 0;
 for (i = 2; i < npts; i++) {
  NVGpoint* a = &pts[0];
  NVGpoint* b = &pts[i-1];
  NVGpoint* c = &pts[i];
  area += nvg__triarea2(a->x,a->y, b->x,b->y, c->x,c->y);
 }
 return area * 0.5f;
}

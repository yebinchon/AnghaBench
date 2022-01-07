
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float x; float dy; float y; float dx; float dmx; float dmy; } ;
typedef TYPE_1__ NVGpoint ;



__attribute__((used)) static void nvg__chooseBevel(int bevel, NVGpoint* p0, NVGpoint* p1, float w,
       float* x0, float* y0, float* x1, float* y1)
{
 if (bevel) {
  *x0 = p1->x + p0->dy * w;
  *y0 = p1->y - p0->dx * w;
  *x1 = p1->x + p1->dy * w;
  *y1 = p1->y - p1->dx * w;
 } else {
  *x0 = p1->x + p1->dmx * w;
  *y0 = p1->y + p1->dmy * w;
  *x1 = p1->x + p1->dmx * w;
  *y1 = p1->y + p1->dmy * w;
 }
}

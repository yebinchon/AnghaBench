
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_rect {int x0; int y0; void* y1; void* x1; } ;


 void* FFALIGN (void*,int) ;

__attribute__((used)) static void align_bbox(int xstep, int ystep, struct mp_rect *rc)
{
    rc->x0 = rc->x0 & ~(xstep - 1);
    rc->y0 = rc->y0 & ~(ystep - 1);
    rc->x1 = FFALIGN(rc->x1, xstep);
    rc->y1 = FFALIGN(rc->y1, ystep);
}

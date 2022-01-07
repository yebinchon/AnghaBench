
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_rect {void* y1; void* x1; void* y0; void* x0; } ;


 void* MPMAX (void*,void*) ;
 void* MPMIN (void*,void*) ;

void mp_rect_union(struct mp_rect *rc, const struct mp_rect *rc2)
{
    rc->x0 = MPMIN(rc->x0, rc2->x0);
    rc->y0 = MPMIN(rc->y0, rc2->y0);
    rc->x1 = MPMAX(rc->x1, rc2->x1);
    rc->y1 = MPMAX(rc->y1, rc2->y1);
}

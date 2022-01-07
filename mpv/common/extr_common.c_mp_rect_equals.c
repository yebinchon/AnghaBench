
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_rect {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;



bool mp_rect_equals(struct mp_rect *rc1, struct mp_rect *rc2)
{
    return rc1->x0 == rc2->x0 && rc1->y0 == rc2->y0 &&
           rc1->x1 == rc2->x1 && rc1->y1 == rc2->y1;
}

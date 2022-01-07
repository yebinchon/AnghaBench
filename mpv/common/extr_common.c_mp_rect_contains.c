
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_rect {int x0; int x1; int y0; int y1; } ;



bool mp_rect_contains(struct mp_rect *rc, int x, int y)
{
    return rc->x0 <= x && x < rc->x1 && rc->y0 <= y && y < rc->y1;
}

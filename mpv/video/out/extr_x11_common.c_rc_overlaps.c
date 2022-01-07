
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_rect {int dummy; } ;


 int mp_rect_intersection (struct mp_rect*,struct mp_rect*) ;

__attribute__((used)) static bool rc_overlaps(struct mp_rect rc1, struct mp_rect rc2)
{
    return mp_rect_intersection(&rc1, &rc2);
}

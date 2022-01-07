
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ POINT ;
typedef int LONG ;



__attribute__((used)) static inline void swap_point(POINT *pt)
{
    LONG tmp = pt->x;
    pt->x = pt->y;
    pt->y = tmp;
}

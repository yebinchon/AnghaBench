
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* p; } ;
struct TYPE_8__ {int y; int x; } ;
struct TYPE_7__ {int y; int x; } ;
typedef TYPE_2__ Point ;
typedef TYPE_3__ LSEG ;



__attribute__((used)) static void
regress_lseg_construct(LSEG *lseg, Point *pt1, Point *pt2)
{
 lseg->p[0].x = pt1->x;
 lseg->p[0].y = pt1->y;
 lseg->p[1].x = pt2->x;
 lseg->p[1].y = pt2->y;
}

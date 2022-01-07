
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p; } ;
typedef int Point ;
typedef TYPE_1__ LSEG ;


 int FPeq (scalar_t__,scalar_t__) ;
 scalar_t__ point_dt (int *,int *) ;

__attribute__((used)) static bool
lseg_contain_point(LSEG *lseg, Point *pt)
{
 return FPeq(point_dt(pt, &lseg->p[0]) +
    point_dt(pt, &lseg->p[1]),
    point_dt(&lseg->p[0], &lseg->p[1]));
}

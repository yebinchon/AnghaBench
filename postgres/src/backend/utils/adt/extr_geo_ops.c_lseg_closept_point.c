
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int float8 ;
struct TYPE_4__ {int * p; } ;
typedef int Point ;
typedef TYPE_1__ LSEG ;
typedef int LINE ;


 int line_construct (int *,int *,int ) ;
 int lseg_closept_line (int *,TYPE_1__*,int *) ;
 int point_dt (int *,int *) ;
 int point_invsl (int *,int *) ;

__attribute__((used)) static float8
lseg_closept_point(Point *result, LSEG *lseg, Point *pt)
{
 Point closept;
 LINE tmp;





 line_construct(&tmp, pt, point_invsl(&lseg->p[0], &lseg->p[1]));
 lseg_closept_line(&closept, lseg, &tmp);

 if (result != ((void*)0))
  *result = closept;

 return point_dt(&closept, pt);
}

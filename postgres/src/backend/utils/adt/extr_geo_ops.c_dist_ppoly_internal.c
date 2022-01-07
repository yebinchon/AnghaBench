
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_10__ {int y; int x; } ;
struct TYPE_9__ {TYPE_1__* p; } ;
struct TYPE_8__ {int npts; TYPE_4__* p; } ;
struct TYPE_7__ {int y; int x; } ;
typedef int Point ;
typedef TYPE_2__ POLYGON ;
typedef TYPE_3__ LSEG ;


 scalar_t__ float8_lt (double,double) ;
 double lseg_closept_point (int *,TYPE_3__*,int *) ;
 scalar_t__ point_inside (int *,int,TYPE_4__*) ;

__attribute__((used)) static float8
dist_ppoly_internal(Point *pt, POLYGON *poly)
{
 float8 result;
 float8 d;
 int i;
 LSEG seg;

 if (point_inside(pt, poly->npts, poly->p) != 0)
  return 0.0;


 seg.p[0].x = poly->p[0].x;
 seg.p[0].y = poly->p[0].y;
 seg.p[1].x = poly->p[poly->npts - 1].x;
 seg.p[1].y = poly->p[poly->npts - 1].y;
 result = lseg_closept_point(((void*)0), &seg, pt);


 for (i = 0; i < poly->npts - 1; i++)
 {
  seg.p[0].x = poly->p[i].x;
  seg.p[0].y = poly->p[i].y;
  seg.p[1].x = poly->p[i + 1].x;
  seg.p[1].y = poly->p[i + 1].y;
  d = lseg_closept_point(((void*)0), &seg, pt);
  if (float8_lt(d, result))
   result = d;
 }

 return result;
}

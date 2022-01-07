
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_7__ {int * p; } ;
typedef int Point ;
typedef TYPE_1__ LSEG ;


 scalar_t__ float8_lt (double,double) ;
 double lseg_closept_point (int *,TYPE_1__*,int *) ;
 scalar_t__ lseg_interpt_lseg (int *,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static float8
lseg_closept_lseg(Point *result, LSEG *on_lseg, LSEG *to_lseg)
{
 Point point;
 float8 dist,
    d;


 if (lseg_interpt_lseg(result, on_lseg, to_lseg))
  return 0.0;





 dist = lseg_closept_point(result, on_lseg, &to_lseg->p[0]);
 d = lseg_closept_point(&point, on_lseg, &to_lseg->p[1]);
 if (float8_lt(d, dist))
 {
  dist = d;
  if (result != ((void*)0))
   *result = point;
 }


 d = lseg_closept_point(((void*)0), to_lseg, &on_lseg->p[0]);
 if (float8_lt(d, dist))
 {
  dist = d;
  if (result != ((void*)0))
   *result = on_lseg->p[0];
 }
 d = lseg_closept_point(((void*)0), to_lseg, &on_lseg->p[1]);
 if (float8_lt(d, dist))
 {
  dist = d;
  if (result != ((void*)0))
   *result = on_lseg->p[1];
 }

 return dist;
}

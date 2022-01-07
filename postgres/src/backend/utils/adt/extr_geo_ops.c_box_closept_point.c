
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_14__ {int y; int x; } ;
struct TYPE_13__ {TYPE_3__ high; TYPE_3__ low; } ;
struct TYPE_12__ {int y; int x; } ;
typedef TYPE_1__ Point ;
typedef int LSEG ;
typedef TYPE_2__ BOX ;


 scalar_t__ box_contain_point (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ float8_lt (double,double) ;
 double lseg_closept_point (TYPE_1__*,int *,TYPE_1__*) ;
 int statlseg_construct (int *,TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static float8
box_closept_point(Point *result, BOX *box, Point *pt)
{
 float8 dist,
    d;
 Point point,
    closept;
 LSEG lseg;

 if (box_contain_point(box, pt))
 {
  if (result != ((void*)0))
   *result = *pt;

  return 0.0;
 }


 point.x = box->low.x;
 point.y = box->high.y;
 statlseg_construct(&lseg, &box->low, &point);
 dist = lseg_closept_point(result, &lseg, pt);

 statlseg_construct(&lseg, &box->high, &point);
 d = lseg_closept_point(&closept, &lseg, pt);
 if (float8_lt(d, dist))
 {
  dist = d;
  if (result != ((void*)0))
   *result = closept;
 }

 point.x = box->high.x;
 point.y = box->low.y;
 statlseg_construct(&lseg, &box->low, &point);
 d = lseg_closept_point(&closept, &lseg, pt);
 if (float8_lt(d, dist))
 {
  dist = d;
  if (result != ((void*)0))
   *result = closept;
 }

 statlseg_construct(&lseg, &box->high, &point);
 d = lseg_closept_point(&closept, &lseg, pt);
 if (float8_lt(d, dist))
 {
  dist = d;
  if (result != ((void*)0))
   *result = closept;
 }

 return dist;
}

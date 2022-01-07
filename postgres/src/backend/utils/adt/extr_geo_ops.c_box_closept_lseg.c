
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef double float8 ;
struct TYPE_12__ {int y; int x; } ;
struct TYPE_11__ {TYPE_3__ high; TYPE_3__ low; } ;
struct TYPE_10__ {int y; int x; } ;
typedef TYPE_1__ Point ;
typedef int LSEG ;
typedef TYPE_2__ BOX ;


 scalar_t__ box_interpt_lseg (TYPE_1__*,TYPE_2__*,int *) ;
 scalar_t__ float8_lt (double,double) ;
 double lseg_closept_lseg (TYPE_1__*,int *,int *) ;
 int statlseg_construct (int *,TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static float8
box_closept_lseg(Point *result, BOX *box, LSEG *lseg)
{
 float8 dist,
    d;
 Point point,
    closept;
 LSEG bseg;

 if (box_interpt_lseg(result, box, lseg))
  return 0.0;


 point.x = box->low.x;
 point.y = box->high.y;
 statlseg_construct(&bseg, &box->low, &point);
 dist = lseg_closept_lseg(result, &bseg, lseg);

 statlseg_construct(&bseg, &box->high, &point);
 d = lseg_closept_lseg(&closept, &bseg, lseg);
 if (float8_lt(d, dist))
 {
  dist = d;
  if (result != ((void*)0))
   *result = closept;
 }

 point.x = box->high.x;
 point.y = box->low.y;
 statlseg_construct(&bseg, &box->low, &point);
 d = lseg_closept_lseg(&closept, &bseg, lseg);
 if (float8_lt(d, dist))
 {
  dist = d;
  if (result != ((void*)0))
   *result = closept;
 }

 statlseg_construct(&bseg, &box->high, &point);
 d = lseg_closept_lseg(&closept, &bseg, lseg);
 if (float8_lt(d, dist))
 {
  dist = d;
  if (result != ((void*)0))
   *result = closept;
 }

 return dist;
}

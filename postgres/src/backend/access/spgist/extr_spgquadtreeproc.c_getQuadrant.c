
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int Point ;


 int ERROR ;
 scalar_t__ SPTEST (int ,int *,int *) ;
 int elog (int ,char*) ;
 int point_above ;
 int point_below ;
 int point_horiz ;
 int point_left ;
 int point_right ;
 int point_vert ;

__attribute__((used)) static int16
getQuadrant(Point *centroid, Point *tst)
{
 if ((SPTEST(point_above, tst, centroid) ||
   SPTEST(point_horiz, tst, centroid)) &&
  (SPTEST(point_right, tst, centroid) ||
   SPTEST(point_vert, tst, centroid)))
  return 1;

 if (SPTEST(point_below, tst, centroid) &&
  (SPTEST(point_right, tst, centroid) ||
   SPTEST(point_vert, tst, centroid)))
  return 2;

 if ((SPTEST(point_below, tst, centroid) ||
   SPTEST(point_horiz, tst, centroid)) &&
  SPTEST(point_left, tst, centroid))
  return 3;

 if (SPTEST(point_above, tst, centroid) &&
  SPTEST(point_left, tst, centroid))
  return 4;

 elog(ERROR, "getQuadrant: impossible case");
 return 0;
}

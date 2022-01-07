
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int y; int x; } ;
typedef TYPE_1__ Point ;


 int EARTH_RADIUS ;
 double M_PI ;
 double TWO_PI ;
 int asin (double) ;
 int cos (double) ;
 double degtorad (int ) ;
 int fabs (double) ;
 int sin (double) ;
 double sqrt (int) ;

__attribute__((used)) static double
geo_distance_internal(Point *pt1, Point *pt2)
{
 double long1,
    lat1,
    long2,
    lat2;
 double longdiff;
 double sino;



 long1 = degtorad(pt1->x);
 lat1 = degtorad(pt1->y);

 long2 = degtorad(pt2->x);
 lat2 = degtorad(pt2->y);


 longdiff = fabs(long1 - long2);
 if (longdiff > M_PI)
  longdiff = TWO_PI - longdiff;

 sino = sqrt(sin(fabs(lat1 - lat2) / 2.) * sin(fabs(lat1 - lat2) / 2.) +
    cos(lat1) * cos(lat2) * sin(longdiff / 2.) * sin(longdiff / 2.));
 if (sino > 1.)
  sino = 1.;

 return 2. * EARTH_RADIUS * asin(sino);
}

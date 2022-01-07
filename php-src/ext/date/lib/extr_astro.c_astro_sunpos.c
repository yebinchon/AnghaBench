
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double RADEG ;
 double astro_revolution (double) ;
 double atan2d (double,double) ;
 double cosd (double) ;
 double sind (double) ;
 double sqrt (double) ;

__attribute__((used)) static void astro_sunpos(double d, double *lon, double *r)
{
 double M,
        w,

        e,
        E,
        x, y,
        v;


 M = astro_revolution(356.0470 + 0.9856002585 * d);
 w = 282.9404 + 4.70935E-5 * d;
 e = 0.016709 - 1.151E-9 * d;


 E = M + e * RADEG * sind(M) * (1.0 + e * cosd(M));
 x = cosd(E) - e;
 y = sqrt(1.0 - e*e) * sind(E);
 *r = sqrt(x*x + y*y);
 v = atan2d(y, x);
 *lon = v + w;
 if (*lon >= 360.0) {
  *lon -= 360.0;
 }
}

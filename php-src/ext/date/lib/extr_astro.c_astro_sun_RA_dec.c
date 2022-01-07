
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int astro_sunpos (double,double*,double*) ;
 double atan2d (double,double) ;
 double cosd (double) ;
 double sind (double) ;
 double sqrt (double) ;

__attribute__((used)) static void astro_sun_RA_dec(double d, double *RA, double *dec, double *r)
{
 double lon, obl_ecl, x, y, z;


 astro_sunpos(d, &lon, r);


 x = *r * cosd(lon);
 y = *r * sind(lon);


 obl_ecl = 23.4393 - 3.563E-7 * d;


 z = y * sind(obl_ecl);
 y = y * cosd(obl_ecl);


 *RA = atan2d(y, x);
 *dec = atan2d(z, sqrt(x*x + y*y));
}

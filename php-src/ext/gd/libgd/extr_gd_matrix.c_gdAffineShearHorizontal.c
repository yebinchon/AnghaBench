
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GD_TRUE ;
 double const M_PI ;
 double tan (double const) ;

int gdAffineShearHorizontal(double dst[6], const double angle)
{
 dst[0] = 1;
 dst[1] = 0;
 dst[2] = tan(angle * M_PI / 180.0);
 dst[3] = 1;
 dst[4] = 0;
 dst[5] = 0;
   return GD_TRUE;
}

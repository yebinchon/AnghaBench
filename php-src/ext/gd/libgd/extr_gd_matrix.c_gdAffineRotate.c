
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GD_TRUE ;
 double const M_PI ;
 double cos (double const) ;
 double sin (double const) ;

int gdAffineRotate (double dst[6], const double angle)
{
 const double sin_t = sin (angle * M_PI / 180.0);
 const double cos_t = cos (angle * M_PI / 180.0);

 dst[0] = cos_t;
 dst[1] = sin_t;
 dst[2] = -sin_t;
 dst[3] = cos_t;
 dst[4] = 0;
 dst[5] = 0;
 return GD_TRUE;
}

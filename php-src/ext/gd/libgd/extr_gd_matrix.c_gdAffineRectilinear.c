
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GD_EPSILON ;
 scalar_t__ fabs (double const) ;

int gdAffineRectilinear (const double m[6])
{
  return ((fabs (m[1]) < GD_EPSILON && fabs (m[2]) < GD_EPSILON) ||
   (fabs (m[0]) < GD_EPSILON && fabs (m[3]) < GD_EPSILON));
}

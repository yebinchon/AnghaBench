
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fabs (double const) ;
 double sqrt (int ) ;

double gdAffineExpansion (const double src[6])
{
  return sqrt (fabs (src[0] * src[3] - src[1] * src[2]));
}

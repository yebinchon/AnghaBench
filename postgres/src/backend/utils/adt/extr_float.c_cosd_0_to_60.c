
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double float8 ;


 double RADIANS_PER_DEGREE ;
 double cos (double) ;
 double volatile one_minus_cos_60 ;

__attribute__((used)) static double
cosd_0_to_60(double x)
{
 volatile float8 one_minus_cos_x = 1.0 - cos(x * RADIANS_PER_DEGREE);

 return 1.0 - (one_minus_cos_x / one_minus_cos_60) / 2.0;
}

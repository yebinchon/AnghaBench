
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double float8 ;


 double RADIANS_PER_DEGREE ;
 double sin (double) ;
 double volatile sin_30 ;

__attribute__((used)) static double
sind_0_to_30(double x)
{
 volatile float8 sin_x = sin(x * RADIANS_PER_DEGREE);

 return (sin_x / sin_30) / 2.0;
}

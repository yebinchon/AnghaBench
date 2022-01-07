
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double float8 ;


 int check_float8_val (double,int,int) ;
 double fabs (double) ;
 double get_float8_infinity () ;
 double get_float8_nan () ;
 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;
 double sqrt (double) ;

float8
pg_hypot(float8 x, float8 y)
{
 float8 yx,
    result;


 if (isinf(x) || isinf(y))
  return get_float8_infinity();

 if (isnan(x) || isnan(y))
  return get_float8_nan();


 x = fabs(x);
 y = fabs(y);


 if (x < y)
 {
  float8 temp = x;

  x = y;
  y = temp;
 }






 if (y == 0.0)
  return x;


 yx = y / x;
 result = x * sqrt(1.0 + (yx * yx));

 check_float8_val(result, 0, 0);

 return result;
}

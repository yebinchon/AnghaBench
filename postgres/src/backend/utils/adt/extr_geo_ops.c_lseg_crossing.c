
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;


 scalar_t__ FPge (int ,double) ;
 scalar_t__ FPgt (int ,double) ;
 scalar_t__ FPle (int ,double) ;
 scalar_t__ FPlt (int ,double) ;
 scalar_t__ FPzero (int ) ;
 int POINT_ON_POLYGON ;
 int float8_mi (int ,int ) ;
 int float8_mul (int ,int ) ;

__attribute__((used)) static int
lseg_crossing(float8 x, float8 y, float8 prev_x, float8 prev_y)
{
 float8 z;
 int y_sign;

 if (FPzero(y))
 {
  if (FPzero(x))
   return POINT_ON_POLYGON;
  else if (FPgt(x, 0))
  {
   if (FPzero(prev_y))

    return FPgt(prev_x, 0.0) ? 0 : POINT_ON_POLYGON;
   return FPlt(prev_y, 0.0) ? 1 : -1;
  }
  else
  {
   if (FPzero(prev_y))

    return FPlt(prev_x, 0.0) ? 0 : POINT_ON_POLYGON;
   return 0;
  }
 }
 else
 {

  y_sign = FPgt(y, 0.0) ? 1 : -1;

  if (FPzero(prev_y))

   return FPlt(prev_x, 0.0) ? 0 : y_sign;
  else if ((y_sign < 0 && FPlt(prev_y, 0.0)) ||
     (y_sign > 0 && FPgt(prev_y, 0.0)))

   return 0;
  else
  {
   if (FPge(x, 0.0) && FPgt(prev_x, 0.0))

    return 2 * y_sign;
   if (FPlt(x, 0.0) && FPle(prev_x, 0.0))

    return 0;


   z = float8_mi(float8_mul(float8_mi(x, prev_x), y),
        float8_mul(float8_mi(y, prev_y), x));
   if (FPzero(z))
    return POINT_ON_POLYGON;
   if ((y_sign < 0 && FPlt(z, 0.0)) ||
    (y_sign > 0 && FPgt(z, 0.0)))
    return 0;
   return 2 * y_sign;
  }
 }
}

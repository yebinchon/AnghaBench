
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NDBOX ;


 double Abs (scalar_t__) ;
 int DIM (int *) ;
 scalar_t__ IS_POINT (int *) ;
 scalar_t__ LL_COORD (int *,int) ;
 scalar_t__ UR_COORD (int *,int) ;

void
rt_cube_size(NDBOX *a, double *size)
{
 double result;
 int i;

 if (a == (NDBOX *) ((void*)0))
 {

  result = 0.0;
 }
 else if (IS_POINT(a) || DIM(a) == 0)
 {

  result = 0.0;
 }
 else
 {
  result = 1.0;
  for (i = 0; i < DIM(a); i++)
   result *= Abs(UR_COORD(a, i) - LL_COORD(a, i));
 }
 *size = result;
}

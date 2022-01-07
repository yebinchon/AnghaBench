
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double float8 ;


 double acos (double) ;
 double volatile acos_0_5 ;
 double asin (double) ;
 double volatile asin_0_5 ;

__attribute__((used)) static double
asind_q1(double x)
{






 if (x <= 0.5)
 {
  volatile float8 asin_x = asin(x);

  return (asin_x / asin_0_5) * 30.0;
 }
 else
 {
  volatile float8 acos_x = acos(x);

  return 90.0 - (acos_x / acos_0_5) * 60.0;
 }
}

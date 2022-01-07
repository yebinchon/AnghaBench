
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double Max (double,double) ;
 double Min (double,double) ;

__attribute__((used)) static double
distance_1D(double a1, double a2, double b1, double b2)
{

 if ((a1 <= b1) && (a2 <= b1) && (a1 <= b2) && (a2 <= b2))
  return (Min(b1, b2) - Max(a1, a2));


 if ((a1 > b1) && (a2 > b1) && (a1 > b2) && (a2 > b2))
  return (Min(a1, a2) - Max(b1, b2));


 return 0.0;
}

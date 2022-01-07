
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double cosd_0_to_60 (double) ;
 double sind_0_to_30 (double) ;

__attribute__((used)) static double
sind_q1(double x)
{






 if (x <= 30.0)
  return sind_0_to_30(x);
 else
  return cosd_0_to_60(90.0 - x);
}

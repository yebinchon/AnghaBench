
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double cosd_0_to_60 (double) ;
 double sind_0_to_30 (double) ;

__attribute__((used)) static double
cosd_q1(double x)
{






 if (x <= 60.0)
  return cosd_0_to_60(x);
 else
  return sind_0_to_30(90.0 - x);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double KM_P0 ;
 double const KM_P2 ;
 double const KM_P3 ;
 double KM_Q0 ;
 double const KM_Q1 ;
 double const KM_Q2 ;
 double const KM_Q3 ;

__attribute__((used)) static double filter_mitchell(const double x)
{
 if (x < -2.0)
  return(0.0f);
 if (x < -1.0)
  return((( 8.0f * (1.0f/3.0f) + 24.0f * (1.0f/3.0f)) / 6.0f)-x*(((-12.0f * (1.0f/3.0f) - 48.0f * (1.0f/3.0f)) / 6.0f)-x*((( 6.0f * (1.0f/3.0f) + 30.0f * (1.0f/3.0f)) / 6.0f)-x*(( -1.0f * (1.0f/3.0f) - 6.0f * (1.0f/3.0f)) / 6.0f))));
 if (x < 0.0f)
  return((( 6.0f - 2.0f * (1.0f/3.0f) ) / 6.0f)+x*x*(((-18.0f + 12.0f * (1.0f/3.0f) + 6.0f * (1.0f/3.0f)) / 6.0f)-x*(( 12.0f - 9.0f * (1.0f/3.0f) - 6.0f * (1.0f/3.0f)) / 6.0f)));
 if (x < 1.0f)
  return((( 6.0f - 2.0f * (1.0f/3.0f) ) / 6.0f)+x*x*(((-18.0f + 12.0f * (1.0f/3.0f) + 6.0f * (1.0f/3.0f)) / 6.0f)+x*(( 12.0f - 9.0f * (1.0f/3.0f) - 6.0f * (1.0f/3.0f)) / 6.0f)));
 if (x < 2.0f)
  return((( 8.0f * (1.0f/3.0f) + 24.0f * (1.0f/3.0f)) / 6.0f)+x*(((-12.0f * (1.0f/3.0f) - 48.0f * (1.0f/3.0f)) / 6.0f)+x*((( 6.0f * (1.0f/3.0f) + 30.0f * (1.0f/3.0f)) / 6.0f)+x*(( -1.0f * (1.0f/3.0f) - 6.0f * (1.0f/3.0f)) / 6.0f))));
 return(0.0f);
}

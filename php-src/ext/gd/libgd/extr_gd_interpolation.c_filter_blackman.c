
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double const M_PI ;
 scalar_t__ cos (double const) ;

__attribute__((used)) static double filter_blackman(const double x)
{
 return (0.42f+0.5f*(double)cos(M_PI*x)+0.08f*(double)cos(2.0f*M_PI*x));
}

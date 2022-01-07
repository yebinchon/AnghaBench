
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double const M_PI ;
 double cos (double const) ;

__attribute__((used)) static double filter_hanning(const double x)
{

 return(0.5 + 0.5 * cos(M_PI * x));
}

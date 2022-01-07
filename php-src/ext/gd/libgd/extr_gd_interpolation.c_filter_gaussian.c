
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float exp (float) ;

__attribute__((used)) static double filter_gaussian(const double x)
{

 return (double)(exp(-2.0f * x * x) * 0.79788456080287f);
}

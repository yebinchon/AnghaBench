
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double filter_catmullrom(const double x)
{
 if (x < -2.0)
  return(0.0f);
 if (x < -1.0)
  return(0.5f*(4.0f+x*(8.0f+x*(5.0f+x))));
 if (x < 0.0)
  return(0.5f*(2.0f+x*x*(-5.0f-3.0f*x)));
 if (x < 1.0)
  return(0.5f*(2.0f+x*x*(-5.0f+3.0f*x)));
 if (x < 2.0)
  return(0.5f*(4.0f+x*(-8.0f+x*(5.0f-x))));
 return(0.0f);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double filter_hamming(const double x)
{



 if (x < -1.0f)
  return 0.0f;
 if (x < 0.0f)
  return 0.92f*(-2.0f*x-3.0f)*x*x+1.0f;
 if (x < 1.0f)
  return 0.92f*(2.0f*x-3.0f)*x*x+1.0f;
 return 0.0f;
}

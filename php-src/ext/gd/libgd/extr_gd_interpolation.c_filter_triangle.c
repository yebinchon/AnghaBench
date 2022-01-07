
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double filter_triangle(const double x1)
{
 const double x = x1 < 0.0 ? -x1 : x1;
 if (x < 1.0) return (1.0 - x);
 return 0.0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
double floor(double x)
{
    return (double) (x < 0.f ? ((int) x == x ? x : (((int) x) - 1)) : ((int) x));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double pres_dot(double *args, int n)
{
    int i;
    double sum;

    sum = 0.0;
    for (i = 0; i < n; ++i)
        sum += args[i] * args[i + n];
    return sum;
}

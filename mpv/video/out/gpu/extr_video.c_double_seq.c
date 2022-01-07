
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isnan (double) ;

__attribute__((used)) static bool double_seq(double a, double b)
{
    return (isnan(a) && isnan(b)) || a == b;
}

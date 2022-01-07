
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int params ;



__attribute__((used)) static double quadric(params *p, double x)
{
    if (x < 0.75) {
        return 0.75 - x * x;
    } else if (x < 1.5) {
        double t = x - 1.5;
        return 0.5 * t * t;
    }
    return 0.0;
}

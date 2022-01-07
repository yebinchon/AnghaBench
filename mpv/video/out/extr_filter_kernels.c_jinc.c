
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int params ;


 double M_PI ;
 int fabs (double) ;
 double j1 (double) ;

__attribute__((used)) static double jinc(params *p, double x)
{
    if (fabs(x) < 1e-8)
        return 1.0;
    x *= M_PI;
    return 2.0 * j1(x) / x;
}

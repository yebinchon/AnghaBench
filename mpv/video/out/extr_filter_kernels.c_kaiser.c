
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* params; } ;
typedef TYPE_1__ params ;


 double bessel_i0 (int) ;
 int sqrt (double) ;

__attribute__((used)) static double kaiser(params *p, double x)
{
    if (x > 1)
        return 0;
    double i0a = 1.0 / bessel_i0(p->params[1]);
    return bessel_i0(p->params[0] * sqrt(1.0 - x * x)) * i0a;
}

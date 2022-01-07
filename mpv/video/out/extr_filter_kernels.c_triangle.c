
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double radius; } ;
typedef TYPE_1__ params ;


 scalar_t__ fabs (double) ;
 double fmax (double,scalar_t__) ;

__attribute__((used)) static double triangle(params *p, double x)
{
    return fmax(0.0, 1.0 - fabs(x / p->radius));
}

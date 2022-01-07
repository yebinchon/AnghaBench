
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* params; } ;
typedef TYPE_1__ params ;


 double exp (double) ;

__attribute__((used)) static double gaussian(params *p, double x)
{
    return exp(-2.0 * x * x / p->params[0]);
}

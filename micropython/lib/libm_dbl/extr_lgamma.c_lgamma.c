
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double __lgamma_r (double,int*) ;

double lgamma(double x) {
    int sign;
    return __lgamma_r(x, &sign);
}

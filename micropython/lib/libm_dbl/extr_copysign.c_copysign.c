
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double d; int s; } ;
typedef TYPE_1__ double_s_t ;



double copysign(double x, double y) {
    double_s_t dx={.d = x};
    double_s_t dy={.d = y};


    dx.s = dy.s;

    return dx.d;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int s; } ;
typedef TYPE_1__ float_s_t ;



float copysignf(float x, float y) {
    float_s_t fx={.f = x};
    float_s_t fy={.f = y};


    fx.s = fy.s;

    return fx.f;
}

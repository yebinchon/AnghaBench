
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int s; } ;
typedef TYPE_1__ float_s_t ;



int __signbitf(float f) {
    float_s_t u = {.f = f};
    return u.s;
}

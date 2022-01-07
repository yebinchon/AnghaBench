
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ __int64 ;
struct TYPE_4__ {double f; scalar_t__ i; } ;
struct TYPE_3__ {int const base; TYPE_2__ code; } ;






 int apply_int_mask (TYPE_2__*) ;
 TYPE_1__ calc ;

void convert_real_integer(unsigned int base)
{
    switch (base) {
    case 130:
        calc.code.f = (double)calc.code.i;
        break;
    case 128:
    case 131:
    case 129:
        if (calc.base == 130) {
            calc.code.i = (__int64)calc.code.f;
            apply_int_mask(&calc.code);
        }
        break;
    }
}

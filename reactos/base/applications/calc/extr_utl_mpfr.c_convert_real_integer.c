
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mf; } ;
struct TYPE_3__ {int const base; TYPE_2__ code; } ;






 int apply_int_mask (TYPE_2__*) ;
 TYPE_1__ calc ;
 int mpfr_trunc (int ,int ) ;

void convert_real_integer(unsigned int base)
{
    switch (base) {
    case 130:
        break;
    case 128:
    case 131:
    case 129:
        if (calc.base == 130) {
            mpfr_trunc(calc.code.mf, calc.code.mf);
            apply_int_mask(&calc.code);
        }
        break;
    }
}

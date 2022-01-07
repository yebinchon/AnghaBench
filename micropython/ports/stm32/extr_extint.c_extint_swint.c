
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct TYPE_2__ {int SWIER1; int SWIER; } ;


 TYPE_1__* EXTI ;
 int EXTI_NUM_VECTORS ;

void extint_swint(uint line) {
    if (line >= EXTI_NUM_VECTORS) {
        return;
    }





    EXTI->SWIER &= ~(1 << line);
    EXTI->SWIER |= (1 << line);

}

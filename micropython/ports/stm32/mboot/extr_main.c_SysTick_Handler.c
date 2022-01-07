
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CTRL; } ;


 TYPE_1__* SysTick ;
 int systick_ms ;

void SysTick_Handler(void) {
    systick_ms += 1;




    SysTick->CTRL;
}
